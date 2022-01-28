// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return _NewsResponse.fromJson(json);
}

/// @nodoc
class _$NewsResponseTearOff {
  const _$NewsResponseTearOff();

  _NewsResponse call(
      {required String? status,
      required int? totalResults,
      required List<ArticleResponse>? articles}) {
    return _NewsResponse(
      status: status,
      totalResults: totalResults,
      articles: articles,
    );
  }

  NewsResponse fromJson(Map<String, Object?> json) {
    return NewsResponse.fromJson(json);
  }
}

/// @nodoc
const $NewsResponse = _$NewsResponseTearOff();

/// @nodoc
mixin _$NewsResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleResponse>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseCopyWith<NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseCopyWith<$Res> {
  factory $NewsResponseCopyWith(
          NewsResponse value, $Res Function(NewsResponse) then) =
      _$NewsResponseCopyWithImpl<$Res>;
  $Res call(
      {String? status, int? totalResults, List<ArticleResponse>? articles});
}

/// @nodoc
class _$NewsResponseCopyWithImpl<$Res> implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._value, this._then);

  final NewsResponse _value;
  // ignore: unused_field
  final $Res Function(NewsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$NewsResponseCopyWith<$Res>
    implements $NewsResponseCopyWith<$Res> {
  factory _$NewsResponseCopyWith(
          _NewsResponse value, $Res Function(_NewsResponse) then) =
      __$NewsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status, int? totalResults, List<ArticleResponse>? articles});
}

/// @nodoc
class __$NewsResponseCopyWithImpl<$Res> extends _$NewsResponseCopyWithImpl<$Res>
    implements _$NewsResponseCopyWith<$Res> {
  __$NewsResponseCopyWithImpl(
      _NewsResponse _value, $Res Function(_NewsResponse) _then)
      : super(_value, (v) => _then(v as _NewsResponse));

  @override
  _NewsResponse get _value => super._value as _NewsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_NewsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsResponse implements _NewsResponse {
  const _$_NewsResponse(
      {required this.status,
      required this.totalResults,
      required this.articles});

  factory _$_NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewsResponseFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  @override
  final List<ArticleResponse>? articles;

  @override
  String toString() {
    return 'NewsResponse(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$NewsResponseCopyWith<_NewsResponse> get copyWith =>
      __$NewsResponseCopyWithImpl<_NewsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsResponseToJson(this);
  }
}

abstract class _NewsResponse implements NewsResponse {
  const factory _NewsResponse(
      {required String? status,
      required int? totalResults,
      required List<ArticleResponse>? articles}) = _$_NewsResponse;

  factory _NewsResponse.fromJson(Map<String, dynamic> json) =
      _$_NewsResponse.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<ArticleResponse>? get articles;
  @override
  @JsonKey(ignore: true)
  _$NewsResponseCopyWith<_NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) {
  return _ArticleResponse.fromJson(json);
}

/// @nodoc
class _$ArticleResponseTearOff {
  const _$ArticleResponseTearOff();

  _ArticleResponse call(
      {required SourceResponse? source,
      required String? author,
      required String? title,
      required String? description,
      required String? url,
      required String? urlToImage,
      required String? publishedAt,
      required String? content}) {
    return _ArticleResponse(
      source: source,
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
      content: content,
    );
  }

  ArticleResponse fromJson(Map<String, Object?> json) {
    return ArticleResponse.fromJson(json);
  }
}

/// @nodoc
const $ArticleResponse = _$ArticleResponseTearOff();

/// @nodoc
mixin _$ArticleResponse {
  SourceResponse? get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleResponseCopyWith<ArticleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResponseCopyWith<$Res> {
  factory $ArticleResponseCopyWith(
          ArticleResponse value, $Res Function(ArticleResponse) then) =
      _$ArticleResponseCopyWithImpl<$Res>;
  $Res call(
      {SourceResponse? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  $SourceResponseCopyWith<$Res>? get source;
}

/// @nodoc
class _$ArticleResponseCopyWithImpl<$Res>
    implements $ArticleResponseCopyWith<$Res> {
  _$ArticleResponseCopyWithImpl(this._value, this._then);

  final ArticleResponse _value;
  // ignore: unused_field
  final $Res Function(ArticleResponse) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceResponse?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $SourceResponseCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $SourceResponseCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$ArticleResponseCopyWith<$Res>
    implements $ArticleResponseCopyWith<$Res> {
  factory _$ArticleResponseCopyWith(
          _ArticleResponse value, $Res Function(_ArticleResponse) then) =
      __$ArticleResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {SourceResponse? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  @override
  $SourceResponseCopyWith<$Res>? get source;
}

/// @nodoc
class __$ArticleResponseCopyWithImpl<$Res>
    extends _$ArticleResponseCopyWithImpl<$Res>
    implements _$ArticleResponseCopyWith<$Res> {
  __$ArticleResponseCopyWithImpl(
      _ArticleResponse _value, $Res Function(_ArticleResponse) _then)
      : super(_value, (v) => _then(v as _ArticleResponse));

  @override
  _ArticleResponse get _value => super._value as _ArticleResponse;

  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_ArticleResponse(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceResponse?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleResponse extends _ArticleResponse {
  const _$_ArticleResponse(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content})
      : super._();

  factory _$_ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleResponseFromJson(json);

  @override
  final SourceResponse? source;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? publishedAt;
  @override
  final String? content;

  @override
  String toString() {
    return 'ArticleResponse(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleResponse &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.urlToImage, urlToImage) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(urlToImage),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$ArticleResponseCopyWith<_ArticleResponse> get copyWith =>
      __$ArticleResponseCopyWithImpl<_ArticleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleResponseToJson(this);
  }
}

abstract class _ArticleResponse extends ArticleResponse {
  const factory _ArticleResponse(
      {required SourceResponse? source,
      required String? author,
      required String? title,
      required String? description,
      required String? url,
      required String? urlToImage,
      required String? publishedAt,
      required String? content}) = _$_ArticleResponse;
  const _ArticleResponse._() : super._();

  factory _ArticleResponse.fromJson(Map<String, dynamic> json) =
      _$_ArticleResponse.fromJson;

  @override
  SourceResponse? get source;
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get urlToImage;
  @override
  String? get publishedAt;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$ArticleResponseCopyWith<_ArticleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceResponse _$SourceResponseFromJson(Map<String, dynamic> json) {
  return _SourceResponse.fromJson(json);
}

/// @nodoc
class _$SourceResponseTearOff {
  const _$SourceResponseTearOff();

  _SourceResponse call({required String? id, required String? name}) {
    return _SourceResponse(
      id: id,
      name: name,
    );
  }

  SourceResponse fromJson(Map<String, Object?> json) {
    return SourceResponse.fromJson(json);
  }
}

/// @nodoc
const $SourceResponse = _$SourceResponseTearOff();

/// @nodoc
mixin _$SourceResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceResponseCopyWith<SourceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceResponseCopyWith<$Res> {
  factory $SourceResponseCopyWith(
          SourceResponse value, $Res Function(SourceResponse) then) =
      _$SourceResponseCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SourceResponseCopyWithImpl<$Res>
    implements $SourceResponseCopyWith<$Res> {
  _$SourceResponseCopyWithImpl(this._value, this._then);

  final SourceResponse _value;
  // ignore: unused_field
  final $Res Function(SourceResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SourceResponseCopyWith<$Res>
    implements $SourceResponseCopyWith<$Res> {
  factory _$SourceResponseCopyWith(
          _SourceResponse value, $Res Function(_SourceResponse) then) =
      __$SourceResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$SourceResponseCopyWithImpl<$Res>
    extends _$SourceResponseCopyWithImpl<$Res>
    implements _$SourceResponseCopyWith<$Res> {
  __$SourceResponseCopyWithImpl(
      _SourceResponse _value, $Res Function(_SourceResponse) _then)
      : super(_value, (v) => _then(v as _SourceResponse));

  @override
  _SourceResponse get _value => super._value as _SourceResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_SourceResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourceResponse extends _SourceResponse {
  const _$_SourceResponse({required this.id, required this.name}) : super._();

  factory _$_SourceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SourceResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SourceResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SourceResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$SourceResponseCopyWith<_SourceResponse> get copyWith =>
      __$SourceResponseCopyWithImpl<_SourceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceResponseToJson(this);
  }
}

abstract class _SourceResponse extends SourceResponse {
  const factory _SourceResponse({required String? id, required String? name}) =
      _$_SourceResponse;
  const _SourceResponse._() : super._();

  factory _SourceResponse.fromJson(Map<String, dynamic> json) =
      _$_SourceResponse.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$SourceResponseCopyWith<_SourceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
