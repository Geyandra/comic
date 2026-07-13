sealed class Failure {
  final String message;
  const Failure({required this.message});
}

final class NetworkFailure extends Failure {
  const NetworkFailure() : super(message: 'Tidak Ada Koneksi Internet');
}

final class ServerFailure extends Failure {
  final int? statusCode;
  const ServerFailure({
    this.statusCode,
    super.message = "Terjadi Kesalahan Pada Server",
  });
}

final class TimeoutFailure extends Failure {
  const TimeoutFailure({super.message = "Timeout, Permintaan Waktu Ke Server Telah Habis"});
}

final class ParseFailure extends Failure {
  const ParseFailure({super.message = "Gagal Parsing Data JSON Dari Server"});
}

final class NotFoundFailure extends Failure {
  const NotFoundFailure({super.message = "Data Tidak Ditemukan"});
}

final class UnknownFailure extends Failure {
  const UnknownFailure({
    super.message = "Terjadi Kesalahan Yang Tidak Diketahui",
  });
}
