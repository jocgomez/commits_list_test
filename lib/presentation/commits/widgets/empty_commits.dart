import 'package:commits_list_test/presentation/commits/commits.dart';
import 'package:flutter/material.dart';

class EmptyCommits extends ConsumerWidget {
  const EmptyCommits({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final notifier = ref.read(commitsProvider.notifier);

    return RefreshIndicator(
      onRefresh: notifier.getCommits,
      child: SingleChildScrollView(
        child: Container(
          height: size.height,
          margin: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.info_outline,
                size: 64,
              ),
              const SizedBox(height: 16),
              Text(
                'There are no commits to display.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: colorScheme.onBackground,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Add the API Key if haven't",
                style: TextStyle(
                  fontSize: 16,
                  color: colorScheme.outline,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Drag to refresh the list',
                style: TextStyle(
                  fontSize: 16,
                  color: colorScheme.outline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
