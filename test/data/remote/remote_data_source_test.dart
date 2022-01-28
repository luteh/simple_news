import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_news/data/remote/api_service/my_api_service.dart';
import 'package:simple_news/data/remote/remote_data_source.dart';

import '../fake_data_factory.dart';
import 'remote_data_source_test.mocks.dart';

@GenerateMocks([
  MyApiService,
  Response,
])
void main() {
  final _apiService = MockMyApiService();
  final _remoteDataSource = RemoteDataSource(_apiService);
  group(
    "fetch news",
    () {
      test(
        "success return NewsResponse",
        () async {
          final _response = MockResponse();
          when(_apiService.fetchNews(
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
            q: anyNamed('q'),
          )).thenAnswer((realInvocation) async => _response);
          when(_response.data).thenReturn(FakeDataFactory.newsResponseJson);

          final _result = await _remoteDataSource.fetchNews(
            page: 1,
            pageSize: 1,
            q: 'q',
          );

          verify(_apiService.fetchNews(
            page: anyNamed('page'),
            pageSize: anyNamed('pageSize'),
            q: anyNamed('q'),
          )).called(1);
          expect(_result, FakeDataFactory.newsResponse);
        },
      );
    },
  );
}
