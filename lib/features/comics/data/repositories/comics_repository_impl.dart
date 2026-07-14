import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:komicast_ex/core/error/exception.dart';
import 'package:komicast_ex/core/error/failures.dart';
import 'package:komicast_ex/core/network/dio_error_handler.dart';
import 'package:komicast_ex/features/comics/data/datasources/comics_remote_datasources.dart';
import 'package:komicast_ex/features/comics/domain/entities/comic.dart';
import 'package:komicast_ex/features/comics/domain/repositories/comics_repositories.dart';

class ComicsRepositoryImpl implements ComicsRepositories{
  final ComicsRemoteDataSource _comicDataSource;

  ComicsRepositoryImpl(this._comicDataSource);

  @override
  Future<Either<Failure, List<Comic>>> getComics()async{
    try {
      final response = await _comicDataSource.getComic();
      final comics = response.map((e) => e.toEntity()).toList();
      return Right(comics);
    } on DioException catch (e){
      return Left(_mapDio(e));
    }on ParseException catch(e){
      return Left(ParseFailure(message: e.message));
    }catch(e){
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  Failure _mapDio(DioException e){
    final ex = handleDioException(e);
    if (ex is NetworkException) return const NetworkFailure();
    if (ex is TimeoutException) return const TimeoutFailure();
    if (ex is ServerException) {
      return ServerFailure(message: ex.message, statusCode:  ex.statusCode);
    }
    return const UnknownFailure();
  }
}