import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/comic.dart';

abstract class ComicsRepositories {
  Future<Either<Failure, List<Comic>>> getComics();
}