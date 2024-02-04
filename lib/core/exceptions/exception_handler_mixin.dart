// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'dart:io';

import 'package:commits_list_test/core/exceptions/exceptions.dart';
import 'package:commits_list_test/data/datasources/remote/remote.dart';
import 'package:commits_list_test/data/models/models.dart' as models;
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<AppException, models.Response>>
      handleException<T extends Object>(
    Future<Response<dynamic>> Function() handler, {
    String endpoint = '',
  }) async {
    try {
      final res = await handler();
      return Right(
        models.Response(
          statusCode: res.statusCode ?? 200,
          data: res.data,
          statusMessage: res.statusMessage,
        ),
      );
    } catch (e) {
      var error = '';
      var message = '';
      var identifier = '';
      var statusCode = 0;
      debugPrint(e.runtimeType.toString());

      switch (e.runtimeType) {
        case SocketException:
          e as SocketException;
          error = e.osError?.message ?? '';
          message = 'Unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${e.message}\n at  $endpoint';

        case DioException:
          e as DioException;
          error = e.response?.data?['error'] as String? ?? e.error.toString();
          message = e.response?.data?['message'] as String? ??
              e.response?.data?['error_description'] as String? ??
              'Internal Error occured';
          statusCode = 1;
          identifier = 'DioException ${e.message} \nat  $endpoint';

        default:
          error = 'Unknown error';
          message = 'Unknown error occured';
          statusCode = 2;
          identifier = 'Unknown error $e\n at $endpoint';
      }

      return Left(
        AppException(
          error: error,
          message: message,
          statusCode: statusCode,
          identifier: identifier,
        ),
      );
    }
  }
}
