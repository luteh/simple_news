import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_news/data/remote/remote_data_source.dart';
import 'package:simple_news/data/remote/response/news_response.dart';
import 'package:simple_news/data/repository/my_repository_impl.dart';
import 'package:simple_news/domain/model/article.dart';

import 'my_repository_impl_test.mocks.dart';

@GenerateMocks([
  RemoteDataSource,
  NewsResponse,
  Article,
  ArticleResponse,
])
void main() {
  final _remoteDataSource = MockRemoteDataSource();
  final _repository = MyRepositoryImpl(_remoteDataSource);

  group(
    "fetch news",
    () {
      test(
        "success return Right List<Article>",
        () async {
          final _response = MockNewsResponse();
          final _articleResponse = MockArticleResponse();
          final _articlesResponse =
              List.of([_articleResponse, _articleResponse]);
          final _article = MockArticle();
          final _articles = List.of([_article, _article]);

          when(_remoteDataSource.fetchNews(
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
            q: anyNamed('q'),
          )).thenAnswer((_) async => _response);
          when(_response.articles).thenReturn(_articlesResponse);
          when(_articleResponse.toDomain()).thenReturn(_article);

          final result = await _repository.fetchNews(
            page: 1,
            pageSize: 1,
            q: 'q',
          );

          verify(_remoteDataSource.fetchNews(
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
            q: anyNamed('q'),
          )).called(1);
          verify(_articleResponse.toDomain()).called(_articlesResponse.length);
          expect(result.isRight(), true);
          expect(result.getRight().toNullable(), _articles);
        },
      );
    },
  );
}
