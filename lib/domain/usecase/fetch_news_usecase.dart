import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../core/result/failure.dart';
import '../core/usecase/future_usecase.dart';
import '../model/article.dart';
import '../repository/my_repository.dart';

class FetchNewsUseCaseParams {
  final int page;
  final int pageSize;
  final String q;

  FetchNewsUseCaseParams({
    required this.page,
    required this.pageSize,
    required this.q,
  });
}

@lazySingleton
class FetchNewsUseCase
    extends FutureUseCase<List<Article>, FetchNewsUseCaseParams> {
  final MyRepository myRepository;

  FetchNewsUseCase({required this.myRepository});

  @override
  Future<Either<Failure, List<Article>>> execute(FetchNewsUseCaseParams param) {
    return myRepository.fetchNews(
      page: param.page,
      pageSize: param.pageSize,
      q: param.q.isNotEmpty ? param.q: 'About World',
    );
  }
}
