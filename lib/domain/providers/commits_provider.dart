import 'package:commits_list_test/data/datasources/commits_remote_datasource.dart';
import 'package:commits_list_test/data/datasources/remote/remote.dart';
import 'package:commits_list_test/data/repositories/commit_repository.dart';
import 'package:commits_list_test/domain/providers/remote/dio_network_service_provider.dart';
import 'package:commits_list_test/domain/repositories/commits_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _commitsDatasourceProvider =
    Provider.family<CommitsDatasource, NetworkService>(
  /// Expone la implementacion especifica del data source
  (_, networkService) => CommitsRemoteDatasource(networkService),
);

final commitsRepositoryProvider = Provider<CommitsRepository>((ref) {
  /// Inicializan las dependencias necesarias para las consultas
  final networkService = ref.read(netwokServiceProvider);
  final datasource = ref.read(_commitsDatasourceProvider(networkService));
  final respository = CommitsRepositoryImpl(datasource);

  return respository;
});
