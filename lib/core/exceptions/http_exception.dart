class AppException implements Exception {
  AppException({
    required this.error,
    required this.message,
    required this.statusCode,
    required this.identifier,
  });
  final String? error;
  final String? message;
  final int? statusCode;
  final String? identifier;

  @override
  String toString() {
    return '\nstatusCode=$statusCode\nerror=$error\nmessage=$message\nidentifier=$identifier';
  }
}
