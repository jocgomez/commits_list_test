import 'package:commits_list_test/core/exceptions/exceptions.dart';
import 'package:commits_list_test/data/models/models.dart';
import 'package:dartz/dartz.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  Future<Either<AppException, Response>> get(
    String endpoint, {
    Map<String, dynamic>? request,
    Map<String, dynamic>? queryParameters,
  });
}
