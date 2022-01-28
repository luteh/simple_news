// To parse this JSON data, do
//
//     final newsResponse = newsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_news/domain/model/article.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

NewsResponse newsResponseFromJson(String str) =>
    NewsResponse.fromJson(json.decode(str));

String newsResponseToJson(NewsResponse data) => json.encode(data.toJson());

@freezed
class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    required String? status,
    required int? totalResults,
    required List<ArticleResponse>? articles,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

@freezed
class ArticleResponse with _$ArticleResponse {
  const ArticleResponse._();
  const factory ArticleResponse({
    required SourceResponse? source,
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
  }) = _ArticleResponse;

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);

  Article toDomain() => Article(
        source: source?.toDomain() ??
            const Source(
              id: '',
              name: '',
            ),
        author: author ?? '',
        title: title ?? '',
        description: description ?? '',
        url: url ?? '',
        urlToImage: urlToImage ?? '',
        publishedAt: publishedAt ?? '',
        content: content ?? '',
      );
}

@freezed
class SourceResponse with _$SourceResponse {
  const SourceResponse._();
  const factory SourceResponse({
    required String? id,
    required String? name,
  }) = _SourceResponse;

  factory SourceResponse.fromJson(Map<String, dynamic> json) =>
      _$SourceResponseFromJson(json);

  Source toDomain() => Source(
        id: id ?? '',
        name: name ?? '',
      );
}
