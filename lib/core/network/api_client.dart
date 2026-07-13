import 'package:dio/dio.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://weeb-scraper.onrender.com/api/komiku",
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: Duration(seconds: 15),
      ),
    );
    _addInterceptor();
  }

  void _addInterceptor(){
    _dio.interceptors.add(LogInterceptor(
      requestBody: false,
      responseBody: true,
      error: true,
      logPrint: (object) => print("[HTTP] $object"),
    ),);
  }

  Dio get dio => _dio;
}
