import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_news/domain/core/result/failure.dart';
import 'package:simple_news/domain/model/article.dart';
import 'package:simple_news/domain/repository/my_repository.dart';
import 'package:simple_news/domain/usecase/fetch_news_usecase.dart';

import 'fetch_articles_usecase_test.mocks.dart';

@GenerateMocks([
  MyRepository,
  Article,
])
void main() {
  final _mockRepository = MockMyRepository();
  final _usecase = FetchNewsUseCase(myRepository: _mockRepository);

  test(
    "fetch news success return List<Article>",
    () async {
      final _article = MockArticle();
      final _articles = List.of([_article, _article]);

      when(_mockRepository.fetchNews(
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
        q: anyNamed('q'),
      )).thenAnswer((_) async => Right(_articles));

      final result = await _usecase(FetchNewsUseCaseParams(
        page: 1,
        pageSize: 1,
        q: 'q',
      ));

      verify(_mockRepository.fetchNews(
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
        q: anyNamed('q'),
      )).called(1);
      expect(result.isRight(), true);
      expect(result.getRight().toNullable(), _articles);
    },
  );

  test(
    "fetch news failure return [Failure]",
    () async {
      const _failure = Failure.unexpectedError();

      when(_mockRepository.fetchNews(
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
        q: anyNamed('q'),
      )).thenAnswer((_) async => const Left(_failure));

      final result = await _usecase(FetchNewsUseCaseParams(
        page: 1,
        pageSize: 1,
        q: 'q',
      ));

      verify(_mockRepository.fetchNews(
        page: anyNamed('page'),
        pageSize: anyNamed('pageSize'),
        q: anyNamed('q'),
      )).called(1);
      expect(result.isLeft(), true);
      expect(result.getLeft().toNullable(), _failure);
    },
  );
}
