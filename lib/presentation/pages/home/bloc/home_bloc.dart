import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:simple_news/domain/model/article.dart';
import 'package:simple_news/domain/usecase/fetch_news_usecase.dart';
import '../../../../domain/core/result/result_state.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchNewsUseCase _fetchNewsUseCase;

  HomeBloc(this._fetchNewsUseCase) : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.map(
          started: (value) => null,
          fetchNews: (value) => _fetchNews(value, emit),
          changeSearchKeyword: (value) => _changeSearchKeyword(value, emit),
        );
      },
      transformer: debounce(),
    );
  }

  _fetchNews(_FetchNews value, Emitter<HomeState> emit) async {
    emit(state.copyWith(fetchNewsResult: const ResultState.loading()));

    final _result = await _fetchNewsUseCase(FetchNewsUseCaseParams(
      q: state.searchKeyword,
      page: value.page,
      pageSize: state.pageSize,
    ));

    _result.fold(
      (l) =>
          emit(state.copyWith(fetchNewsResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(
        fetchNewsResult: ResultState.success(data: r),
        currentPage: value.page,
      )),
    );
  }

  _changeSearchKeyword(
      _ChangeSearchKeyword value, Emitter<HomeState> emit) async {
    emit(state.copyWith(searchKeyword: value.keyword));

    await _fetchNews(const _FetchNews(page: 1), emit);
  }

  EventTransformer<HomeEvent> debounce<HomeEvent>() {
    return (events, mapper) {
      final Stream<HomeEvent> nonbounceStream =
          events.where((event) => event is! _ChangeSearchKeyword);
      final Stream<HomeEvent> debounceStream = events
          .where((event) => event is _ChangeSearchKeyword)
          .debounceTime(const Duration(milliseconds: 300));
      return MergeStream([
        nonbounceStream,
        debounceStream,
      ]).flatMap(mapper);
    };
  }
}
