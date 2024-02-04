import 'package:commits_list_test/core/core.dart';
import 'package:commits_list_test/domain/providers/commits_provider.dart';
import 'package:commits_list_test/domain/repositories/commits_repository.dart';
import 'package:commits_list_test/presentation/commits/provider/provider.dart';

final commitsProvider =
    StateNotifierProvider.autoDispose<Commits, CommitsState>((ref) {
  final commitsRepository = ref.read(commitsRepositoryProvider);
  return Commits(commitsRepository);
});

/// Internal state for the commits page
class Commits extends StateNotifier<CommitsState> {
  Commits(this.commitsRepository) : super(CommitsState());
  final CommitsRepository commitsRepository;

  /// Service call to get the commits list
  Future<void> getCommits() async {
    state = state.copyWith(isLoading: true);
    final response = await commitsRepository.getCommits();

    /// Get correctcly the list of commits
    if (response.isRight()) {
      state = state.copyWith(
        commits: response.getRight(),
        isLoading: false,
      );

      /// An error occurred in the service call
    } else if (response.isLeft()) {
      state = state.copyWith(
        exception: response.getLeft(),
        isLoading: false,
      );
    }
  }
}
