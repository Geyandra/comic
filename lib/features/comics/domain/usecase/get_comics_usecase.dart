

import 'package:dartz/dartz.dart';
import 'package:komicast_ex/core/error/failures.dart';
import 'package:komicast_ex/features/comics/domain/entities/comic.dart';
import 'package:komicast_ex/features/comics/domain/repositories/comics_repositories.dart';

import '../../../../core/usecase/usecase.dart';

class GetComicsUsecase extends NoParamsUseCase<List<Comic>> {
  final ComicsRepositories _repositories;
  GetComicsUsecase({required ComicsRepositories repositories})
    : _repositories = repositories;

  @override
  Future<Either<Failure, List<Comic>>> call() {
    return _repositories.getComics();
  }
}