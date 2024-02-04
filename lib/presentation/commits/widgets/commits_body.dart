import 'package:commits_list_test/presentation/commits/provider/provider.dart';
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
    final notifier = ref.read(commitsProvider.notifier);
    final state = ref.watch(commitsProvider);

    return RefreshIndicator(
      onRefresh: notifier.getCommits,
      child: ListView.separated(
        itemCount: state.isLoading ? 5 : state.commits.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          if (state.isLoading) {
            return Container();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
