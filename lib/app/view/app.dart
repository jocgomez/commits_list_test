import 'package:commits_list_test/core/core.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.standard,
      routerConfig: AppRouter.router,
    );
  }
}
