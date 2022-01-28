// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _Started started() {
    return const _Started();
  }

  _FetchNews fetchNews({required int page, int pageSize = 10}) {
    return _FetchNews(
      page: page,
      pageSize: pageSize,
    );
  }

  _ChangeSearchKeyword changeSearchKeyword({required String keyword}) {
    return _ChangeSearchKeyword(
      keyword: keyword,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page, int pageSize) fetchNews,
    required TResult Function(String keyword) changeSearchKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchNews value) fetchNews,
    required TResult Function(_ChangeSearchKeyword value) changeSearchKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page, int pageSize) fetchNews,
    required TResult Function(String keyword) changeSearchKeyword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchNews value) fetchNews,
    required TResult Function(_ChangeSearchKeyword value) changeSearchKeyword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$FetchNewsCopyWith<$Res> {
  factory _$FetchNewsCopyWith(
          _FetchNews value, $Res Function(_FetchNews) then) =
      __$FetchNewsCopyWithImpl<$Res>;
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$FetchNewsCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchNewsCopyWith<$Res> {
  __$FetchNewsCopyWithImpl(_FetchNews _value, $Res Function(_FetchNews) _then)
      : super(_value, (v) => _then(v as _FetchNews));

  @override
  _FetchNews get _value => super._value as _FetchNews;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_FetchNews(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchNews implements _FetchNews {
  const _$_FetchNews({required this.page, this.pageSize = 10});

  @override
  final int page;
  @JsonKey()
  @override
  final int pageSize;

  @override
  String toString() {
    return 'HomeEvent.fetchNews(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchNews &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize));

  @JsonKey(ignore: true)
  @override
  _$FetchNewsCopyWith<_FetchNews> get copyWith =>
      __$FetchNewsCopyWithImpl<_FetchNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page, int pageSize) fetchNews,
    required TResult Function(String keyword) changeSearchKeyword,
  }) {
    return fetchNews(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
  }) {
    return fetchNews?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchNews value) fetchNews,
    required TResult Function(_ChangeSearchKeyword value) changeSearchKeyword,
  }) {
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
  }) {
    return fetchNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews(this);
    }
    return orElse();
  }
}

abstract class _FetchNews implements HomeEvent {
  const factory _FetchNews({required int page, int pageSize}) = _$_FetchNews;

  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$FetchNewsCopyWith<_FetchNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSearchKeywordCopyWith<$Res> {
  factory _$ChangeSearchKeywordCopyWith(_ChangeSearchKeyword value,
          $Res Function(_ChangeSearchKeyword) then) =
      __$ChangeSearchKeywordCopyWithImpl<$Res>;
  $Res call({String keyword});
}

/// @nodoc
class __$ChangeSearchKeywordCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$ChangeSearchKeywordCopyWith<$Res> {
  __$ChangeSearchKeywordCopyWithImpl(
      _ChangeSearchKeyword _value, $Res Function(_ChangeSearchKeyword) _then)
      : super(_value, (v) => _then(v as _ChangeSearchKeyword));

  @override
  _ChangeSearchKeyword get _value => super._value as _ChangeSearchKeyword;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_ChangeSearchKeyword(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeSearchKeyword implements _ChangeSearchKeyword {
  const _$_ChangeSearchKeyword({required this.keyword});

  @override
  final String keyword;

  @override
  String toString() {
    return 'HomeEvent.changeSearchKeyword(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSearchKeyword &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$ChangeSearchKeywordCopyWith<_ChangeSearchKeyword> get copyWith =>
      __$ChangeSearchKeywordCopyWithImpl<_ChangeSearchKeyword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page, int pageSize) fetchNews,
    required TResult Function(String keyword) changeSearchKeyword,
  }) {
    return changeSearchKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
  }) {
    return changeSearchKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page, int pageSize)? fetchNews,
    TResult Function(String keyword)? changeSearchKeyword,
    required TResult orElse(),
  }) {
    if (changeSearchKeyword != null) {
      return changeSearchKeyword(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchNews value) fetchNews,
    required TResult Function(_ChangeSearchKeyword value) changeSearchKeyword,
  }) {
    return changeSearchKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
  }) {
    return changeSearchKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchNews value)? fetchNews,
    TResult Function(_ChangeSearchKeyword value)? changeSearchKeyword,
    required TResult orElse(),
  }) {
    if (changeSearchKeyword != null) {
      return changeSearchKeyword(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchKeyword implements HomeEvent {
  const factory _ChangeSearchKeyword({required String keyword}) =
      _$_ChangeSearchKeyword;

  String get keyword;
  @JsonKey(ignore: true)
  _$ChangeSearchKeywordCopyWith<_ChangeSearchKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {required ResultState<List<Article>> fetchNewsResult,
      required String searchKeyword,
      required int currentPage,
      required int firstPage,
      required int pageSize}) {
    return _HomeState(
      fetchNewsResult: fetchNewsResult,
      searchKeyword: searchKeyword,
      currentPage: currentPage,
      firstPage: firstPage,
      pageSize: pageSize,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  ResultState<List<Article>> get fetchNewsResult =>
      throw _privateConstructorUsedError;
  String get searchKeyword => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get firstPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<List<Article>> fetchNewsResult,
      String searchKeyword,
      int currentPage,
      int firstPage,
      int pageSize});

  $ResultStateCopyWith<List<Article>, $Res> get fetchNewsResult;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? fetchNewsResult = freezed,
    Object? searchKeyword = freezed,
    Object? currentPage = freezed,
    Object? firstPage = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      fetchNewsResult: fetchNewsResult == freezed
          ? _value.fetchNewsResult
          : fetchNewsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Article>>,
      searchKeyword: searchKeyword == freezed
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ResultStateCopyWith<List<Article>, $Res> get fetchNewsResult {
    return $ResultStateCopyWith<List<Article>, $Res>(_value.fetchNewsResult,
        (value) {
      return _then(_value.copyWith(fetchNewsResult: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<List<Article>> fetchNewsResult,
      String searchKeyword,
      int currentPage,
      int firstPage,
      int pageSize});

  @override
  $ResultStateCopyWith<List<Article>, $Res> get fetchNewsResult;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? fetchNewsResult = freezed,
    Object? searchKeyword = freezed,
    Object? currentPage = freezed,
    Object? firstPage = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_HomeState(
      fetchNewsResult: fetchNewsResult == freezed
          ? _value.fetchNewsResult
          : fetchNewsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Article>>,
      searchKeyword: searchKeyword == freezed
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.fetchNewsResult,
      required this.searchKeyword,
      required this.currentPage,
      required this.firstPage,
      required this.pageSize});

  @override
  final ResultState<List<Article>> fetchNewsResult;
  @override
  final String searchKeyword;
  @override
  final int currentPage;
  @override
  final int firstPage;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'HomeState(fetchNewsResult: $fetchNewsResult, searchKeyword: $searchKeyword, currentPage: $currentPage, firstPage: $firstPage, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.fetchNewsResult, fetchNewsResult) &&
            const DeepCollectionEquality()
                .equals(other.searchKeyword, searchKeyword) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.firstPage, firstPage) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchNewsResult),
      const DeepCollectionEquality().hash(searchKeyword),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(firstPage),
      const DeepCollectionEquality().hash(pageSize));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required ResultState<List<Article>> fetchNewsResult,
      required String searchKeyword,
      required int currentPage,
      required int firstPage,
      required int pageSize}) = _$_HomeState;

  @override
  ResultState<List<Article>> get fetchNewsResult;
  @override
  String get searchKeyword;
  @override
  int get currentPage;
  @override
  int get firstPage;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
