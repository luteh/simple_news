import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Named("baseUrl")
  String get baseUrl => 'https://newsapi.org';

  @Named("apiKey")
  String get apiKey => '2b524de5399c4f1291abac0ae2335cfa';

  // url here will be injected
  @lazySingleton
  Dio dio(
    @Named('baseUrl') String url,
    @Named('apiKey') String apiKey,
  ) {
    final _dio = Dio(BaseOptions(
      baseUrl: url,
      connectTimeout: 120000,
      receiveTimeout: 120000,
      sendTimeout: 120000,
    ))
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            options.headers['Authorization'] = apiKey;
            handler.next(options);
          },
        ),
      )
      ..interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true),
      );
    return _dio;
  }
}
