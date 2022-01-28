import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MyApiService {
  final Dio _dio;

  MyApiService(this._dio);

  Future<Response> fetchNews({
    required int page,
    required int pageSize,
    required String q,
  }) async {
    return await _dio.get(
      '/v2/everything',
      queryParameters: {
        'page': page,
        'pageSize': pageSize,
        'q': q,
      },
    );
  }
}
