import 'package:commits_list_test/data/datasources/remote/dio_network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final netwokServiceProvider = Provider<DioNetworkService>(
  (ref) {
    final dio = Dio();
    return DioNetworkService(dio);
  },
);
