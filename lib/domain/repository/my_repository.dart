import 'package:fpdart/fpdart.dart';

import '../core/result/failure.dart';
import '../model/article.dart';

abstract class MyRepository {
  Future<Either<Failure, List<Article>>> fetchNews({
    required int page,
    required int pageSize,
    required String q,
  });
}
