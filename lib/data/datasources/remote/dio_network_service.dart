import 'package:commits_list_test/core/core.dart';
import 'package:commits_list_test/data/datasources/remote/remote.dart';
import 'package:commits_list_test/data/models/models.dart' as models;
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  DioNetworkService(this.dio) {
    dio.options = dioBaseOptions;

    // Prints on console request & response in dev
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestHeader: false,
          responseHeader: false,
          responseBody: true,
        ),
      );
    }
  }
  final Dio dio;

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );

  @override
  String get baseUrl => AppConfigs.baseUrl;

  @override
  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  @override
  Future<Either<AppException, models.Response>> get(
    String endpoint, {
    Map<String, dynamic>? request,
    Map<String, dynamic>? queryParameters,
  }) {
    final res = handleException(
      () => dio.get(
        endpoint,
        data: request,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }
}
