import 'package:commits_list_test/core/exceptions/exceptions.dart';
import 'package:commits_list_test/data/models/models.dart';

class CommitsState {
  CommitsState({
    this.isLoading = false,
    this.commits = const [],
    this.exception,
  });

  bool isLoading;
  List<CommitResponse> commits;
  AppException? exception;

  CommitsState copyWith({
    bool? isLoading,
    List<CommitResponse>? commits,
    AppException? exception,
  }) {
    return CommitsState(
      isLoading: isLoading ?? this.isLoading,
      commits: commits ?? this.commits,
      exception: exception,
    );
  }
}
