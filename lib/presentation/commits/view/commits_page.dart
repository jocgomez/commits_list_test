import 'package:commits_list_test/presentation/commits/widgets/commits_body.dart';
import 'package:flutter/material.dart';

class CommitsPage extends StatelessWidget {
  const CommitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Commits',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const CommitsView(),
    );
  }
}

/// {@template commits_view}
/// Displays the Body of CommitsView
/// {@endtemplate}
class CommitsView extends StatelessWidget {
  /// {@macro commits_view}
  const CommitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommitsBody();
  }
}
