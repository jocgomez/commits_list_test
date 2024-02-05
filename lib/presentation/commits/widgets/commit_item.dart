import 'package:commits_list_test/core/utils/utils.dart';
import 'package:commits_list_test/data/models/models.dart';
import 'package:flutter/material.dart';

class CommitItem extends StatelessWidget {
  const CommitItem({required this.commit, super.key});
  final CommitResponse commit;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CommitAuthorDetail(commit: commit, colorScheme: colorScheme),
          const SizedBox(height: 8),
          Text(
            commit.commit?.message ?? '',
            textAlign: TextAlign.left,
          ),
          if (commit.commit?.author?.date != null)
            Text(
              FormatHelper.formatDate(commit.commit!.author!.date!),
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 10,
                color: colorScheme.outlineVariant,
              ),
            ),
        ],
      ),
    );
  }
}

class CommitAuthorDetail extends StatelessWidget {
  const CommitAuthorDetail({
    required this.commit,
    required this.colorScheme,
    super.key,
  });

  final CommitResponse commit;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 16,
          backgroundColor: colorScheme.onBackground,
          backgroundImage: NetworkImage(commit.author?.avatarUrl ?? ''),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              commit.commit?.author?.name ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              commit.commit?.author?.email ?? '',
              style: TextStyle(
                color: colorScheme.outlineVariant,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
