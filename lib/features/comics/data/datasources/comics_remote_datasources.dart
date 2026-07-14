import 'package:dio/dio.dart';
import '../../../../core/error/exception.dart';
import '../models/comics_model.dart';

abstract interface class ComicsRemoteDataSource{
  Future<List<ComicModel>> getComic(); 
}

class ComicsRemoteDataSourceImpl implements ComicsRemoteDataSource{
  final Dio _dio;

  ComicsRemoteDataSourceImpl(this._dio);

  @override
  Future<List<ComicModel>> getComic()async{
    try {
      final response = await _dio.get("");
      return List<ComicModel>.from(response.data as List);
    } on DioException{
      rethrow;
    } catch (e){
      throw ParseException("Gagal memproses data: $e");
    }
  }
}