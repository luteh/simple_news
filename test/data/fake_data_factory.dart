import 'dart:convert';
import 'dart:io';

import 'package:simple_news/data/remote/response/news_response.dart';

class FakeDataFactory {
  const FakeDataFactory._();

  static final _fileNewsResponse =
      File("test/resources/response/news_response.json").readAsStringSync();

  static Map<String, dynamic> get newsResponseJson =>
      jsonDecode(_fileNewsResponse);
  static NewsResponse get newsResponse =>
      NewsResponse.fromJson(newsResponseJson);
}
