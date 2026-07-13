import 'package:dio/dio.dart';

import '../error/exception.dart';

Exception handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionError:
    case DioExceptionType.unknown:
      return const NetworkException();

    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
      return const TimeoutException();

    case DioExceptionType.badResponse:
      final code = e.response?.statusCode;
      final msg = _extractMessage(e.response);
      return ServerException(message: msg, statusCode: code);

    case DioExceptionType.cancel:
      return const ServerException(message: "Permintaan Dibatalkan");

    case DioExceptionType.badCertificate:
      return const ServerException(message: "Sertifikat SSL Tidak Valid");
  }
}

String _extractMessage(Response? response) {
  try {
    if (response?.data is Map) {
      return (response!.data as Map)['message'] as String? ??
          'Terjadi Kesalahan Pada Server';
    }
  } catch (_) {}
  return "Terjadi Kesalahan Pada Server";
}
