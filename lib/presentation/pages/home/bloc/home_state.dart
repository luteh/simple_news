part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required ResultState<List<Article>> fetchNewsResult,
    required String searchKeyword,
    required int currentPage,
    required int firstPage,
    required int pageSize,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        fetchNewsResult: ResultState.initial(),
        searchKeyword: 'About World',
        currentPage: 1,
        firstPage: 1,
        pageSize: 10,
      );
}
