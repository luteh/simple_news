import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../domain/core/result/failure.dart';
import '../../../../domain/model/article.dart';
import '../../../core/widgets/my_error_widget.dart';
import '../../../core/widgets/my_loading_widget.dart';
import '../bloc/home_bloc.dart';
import 'news_item.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  late PagingController<int, Article> _pagingController;
  late int _firstPage;

  @override
  void initState() {
    _firstPage = context.read<HomeBloc>().state.firstPage;
    _pagingController = PagingController(firstPageKey: _firstPage)
      ..addPageRequestListener((pageKey) {
        if (pageKey == _firstPage) {
          return;
        }

        _fetchNews(pageKey);
      });

    _fetchNews(_firstPage);
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) =>
          previous.fetchNewsResult != current.fetchNewsResult,
      listener: (context, state) {
        state.fetchNewsResult.maybeWhen(
          orElse: () => null,
          success: (data) {
            _onSuccess(data);
          },
          error: (failure) {
            _onFailure(failure);
          },
        );
      },
      child: RefreshIndicator(
        onRefresh: () async => _onRefreshList(),
        child: PagedListView.separated(
          pagingController: _pagingController,
          padding: const EdgeInsets.all(16),
          builderDelegate: PagedChildBuilderDelegate<dynamic>(
            animateTransitions: true,
            itemBuilder: (context, item, index) {
              return NewsItem(article: item);
            },
            firstPageErrorIndicatorBuilder: (context) => MyErrorWidget(
              failure: _pagingController.error,
              onPressRetry: () => _onRefreshList(),
            ),
            newPageErrorIndicatorBuilder: (context) => MyErrorWidget(
              failure: _pagingController.error,
              onPressRetry: () => _pagingController.retryLastFailedRequest(),
            ),
            firstPageProgressIndicatorBuilder: (context) =>
                const MyLoadingWidget(),
            newPageProgressIndicatorBuilder: (context) =>
                const MyLoadingWidget(),
            noItemsFoundIndicatorBuilder: (context) =>
                const Center(child: Text('No Data')),
          ),
          separatorBuilder: (context, i) => const Divider(),
        ),
      ),
    );
  }

  _onSuccess(List<Article> data) {
    if (context.read<HomeBloc>().state.currentPage == _firstPage) {
      _pagingController.refresh();
    }

    if (data.length < context.read<HomeBloc>().state.pageSize) {
      _pagingController.appendLastPage(data);
    } else {
      _pagingController.appendPage(
          data, (_pagingController.nextPageKey ?? _firstPage) + _firstPage);
    }
  }

  _onFailure(Failure failure) {
    _pagingController.error = failure;
  }

  void _fetchNews(int pageKey) {
    context.read<HomeBloc>().add(HomeEvent.fetchNews(page: pageKey));
  }

  _onRefreshList() {
    _pagingController.refresh();
    _fetchNews(_firstPage);
  }
}
