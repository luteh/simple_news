import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_news/data/remote/response/news_response.dart';

import 'api_service/my_api_service.dart';

@lazySingleton
class RemoteDataSource {
  final MyApiService _apiService;

  RemoteDataSource(this._apiService);

  Future<NewsResponse> fetchNews({
    required int page,
    required int pageSize,
    required String q,
  }) async {
    final _response = await _apiService.fetchNews(
      page: page,
      pageSize: pageSize,
      q: q,
    );
    return NewsResponse.fromJson(_response.data);
  }
}
