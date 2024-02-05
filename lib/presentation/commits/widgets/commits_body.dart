import 'package:commits_list_test/presentation/commits/commits.dart';
import 'package:commits_list_test/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// {@template commits_body}
/// Body of the CommitsPage.
///
/// Add what it does
/// {@endtemplate}
class CommitsBody extends ConsumerStatefulWidget {
  /// {@macro commits_body}
  const CommitsBody({super.key});

  @override
  ConsumerState<CommitsBody> createState() => _CommitsBodyState();
}

class _CommitsBodyState extends ConsumerState<CommitsBody> {
  @override
  void initState() {
    super.initState();

    /// Get the commits right when the screen is rendered
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref.read(commitsProvider.notifier).getCommits(),
    );
  }

  @override
  Widget build(BuildContext context) {
    providerStateListener(context);
    final notifier = ref.read(commitsProvider.notifier);
    final state = ref.watch(commitsProvider);

    if (state.commits.isEmpty && !state.isLoading) return const EmptyCommits();

    return RefreshIndicator(
      onRefresh: notifier.getCommits,
      child: ListView.separated(
        itemCount: state.isLoading ? 5 : state.commits.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          if (state.isLoading) return const CommitShimmer();
          return CommitItem(commit: state.commits[index]);
        },
      ),
    );
  }

  /// Listen the changes of current page state
  void providerStateListener(BuildContext context) {
    return ref.listen(commitsProvider, (_, newState) {
      /// Shows a snackbar if the state has an exception object
      if (newState.exception != null && newState.exception?.message != '') {
        showErrorSnackbar(context, newState.exception?.message ?? '');
      }
    });
  }

  /// Show an specific error message in an snackbar
  void showErrorSnackbar(BuildContext context, String errorMessage) {
    CustomSnackBar.showError(
      context,
      errorMessage,
    );
  }
}
