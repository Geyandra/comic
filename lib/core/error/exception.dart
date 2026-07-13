final class NetworkException implements Exception {
  final String message;
  const NetworkException({this.message = "Tidak Ada Koneksi Internet"});

  @override
  String toString() => 'NetworkException: $message';
}

final class ServerException implements Exception {
  final String message;
  final int? statusCode;

  const ServerException({
    this.message = "Terjadi Kesalahan Pada Server",
    this.statusCode,
  });

  @override
  String toString() => "ServerException[$statusCode]: $message";
}

final class TimeoutException implements Exception {
  final String message;

  const TimeoutException({
    this.message = "Permintaan Waktu Ke Server Telah Habis",
  });

  @override
  String toString() => "TimeoutException: $message";
}

final class ParseException implements Exception {
  final String message;

  const ParseException({
    this.message = "Gagal Memproses Data JSON Dari Server",
  });

  @override
  String toString() => "ParseException: $message";
}
