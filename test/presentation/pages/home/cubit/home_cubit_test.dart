import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_news/domain/core/result/failure.dart';
import 'package:simple_news/domain/core/result/result_state.dart';
import 'package:simple_news/domain/model/article.dart';
import 'package:simple_news/domain/usecase/fetch_news_usecase.dart';
import 'package:simple_news/presentation/pages/home/bloc/home_bloc.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([
  FetchNewsUseCase,
  Article,
])
void main() {
  final _fetchCourseUseCase = MockFetchNewsUseCase();

  late Article _article;
  late List<Article> _articles;

  setUp(() {
    _article = MockArticle();
    _articles = List.of([_article, _article]);
  });

  group(
    "fetch news",
    () {
      blocTest<HomeBloc, HomeState>(
        'emits [loading, success]',
        build: () => HomeBloc(_fetchCourseUseCase),
        act: (bloc) {
          when(_fetchCourseUseCase(any))
              .thenAnswer((_) async => Right(_articles));

          bloc.add(const HomeEvent.fetchNews(page: 1));
        },
        expect: () => [
          HomeState.initial()
              .copyWith(fetchNewsResult: const ResultState.loading()),
          HomeState.initial()
              .copyWith(fetchNewsResult: ResultState.success(data: _articles)),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [loading, error]',
        build: () => HomeBloc(_fetchCourseUseCase),
        act: (bloc) {
          when(_fetchCourseUseCase(any))
              .thenAnswer((_) async => const Left(Failure.unexpectedError()));

          bloc.add(const HomeEvent.fetchNews(page: 1));
        },
        expect: () => [
          HomeState.initial()
              .copyWith(fetchNewsResult: const ResultState.loading()),
          HomeState.initial().copyWith(
              fetchNewsResult:
                  const ResultState.error(failure: Failure.unexpectedError())),
        ],
      );
    },
  );
}
