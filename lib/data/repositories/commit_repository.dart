import 'package:commits_list_test/core/core.dart';
import 'package:commits_list_test/data/datasources/commits_remote_datasource.dart';
import 'package:commits_list_test/data/models/models.dart';
import 'package:commits_list_test/domain/repositories/commits_repository.dart';
import 'package:dartz/dartz.dart';

class CommitsRepositoryImpl extends CommitsRepository {
  CommitsRepositoryImpl(this.commitsDatasource);
  final CommitsDatasource commitsDatasource;

  @override
  Future<Either<AppException, List<CommitResponse>>> getCommits() {
    return commitsDatasource.getCommits();
  }
}
