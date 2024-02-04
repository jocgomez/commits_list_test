import 'package:commits_list_test/presentation/commits/widgets/commits_body.dart';
import 'package:flutter/material.dart';

/// {@template commits_page}
/// A description for CommitsPage
/// {@endtemplate}
class CommitsPage extends StatelessWidget {
  /// {@macro commits_page}
  const CommitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CommitsView(),
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
