import 'package:flutter/material.dart';
import 'package:commits_list_test/presentation/commits/provider/provider.dart';

/// {@template commits_body}
/// Body of the CommitsPage.
///
/// Add what it does
/// {@endtemplate}
class CommitsBody extends ConsumerWidget {
  /// {@macro commits_body}
  const CommitsBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(commitsProvider);
    return Text(count.toString());
  }
}
