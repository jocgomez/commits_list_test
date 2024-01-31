import 'package:commits_list_test/core/exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';

class Response {
  Response({
    required this.statusCode,
    this.statusMessage,
    this.data = Map,
  });
  final int statusCode;
  final String? statusMessage;
  final dynamic data;

  @override
  String toString() {
    return 'statusCode=$statusCode\nstatusMessage=$statusMessage\n data=$data';
  }
}

extension ResponseExtension on Response {
  Right<AppException, Response> get toRight => Right(this);
}
