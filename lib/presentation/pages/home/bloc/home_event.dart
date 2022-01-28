part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;

  const factory HomeEvent.fetchNews({
    required int page,
    @Default(10) int pageSize,
  }) = _FetchNews;

  const factory HomeEvent.changeSearchKeyword({
    required String keyword,
  }) = _ChangeSearchKeyword;
}
