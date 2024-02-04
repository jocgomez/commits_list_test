import 'package:commits_list_test/core/exceptions/exceptions.dart';
import 'package:commits_list_test/data/models/models.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class CommitsRepository {
  Future<Either<AppException, List<CommitResponse>>> getCommits();
}
