import 'package:commits_list_test/core/core.dart';
import 'package:commits_list_test/data/datasources/api_services.dart';
import 'package:commits_list_test/data/datasources/remote/remote.dart';
import 'package:commits_list_test/data/models/models.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class CommitsDatasource {
  Future<Either<AppException, List<CommitResponse>>> getCommits();
}

class CommitsRemoteDatasource extends CommitsDatasource {
  CommitsRemoteDatasource(this.networkService);
  final NetworkService networkService;

  @override
  Future<Either<AppException, List<CommitResponse>>> getCommits() async {
    final response = await networkService.get(
      ApiServices.commits(
        AppConfigs.ghUsername,
        AppConfigs.ghRepository,
      ),
    );

    return response.fold(
      Left.new,
      (r) {
        final jsonData = r.data;
        if (jsonData == null || jsonData is! Iterable) {
          return Left(
            AppException(
              error: 'Unable to get commits',
              identifier: 'Unable to get commits',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }

        final response = jsonData
            .map(
              (commit) =>
                  CommitResponse.fromJson(commit as Map<String, dynamic>),
            )
            .toList();

        return Right(response);
      },
    );
  }
}
