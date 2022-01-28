import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/result/failure.dart';
import '../../domain/model/article.dart';
import '../../domain/repository/my_repository.dart';
import '../remote/remote_data_source.dart';

@LazySingleton(as: MyRepository)
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;

  MyRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Article>>> fetchNews({
    required int page,
    required int pageSize,
    required String q,
  }) async {
    final _data = await _remoteDataSource.fetchNews(
      page: page,
      pageSize: pageSize,
      q: q,
    );
    return right(_data.articles?.map((e) => e.toDomain()).toList() ?? []);
  }
}
