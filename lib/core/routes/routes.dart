import 'package:commits_list_test/presentation/commits/commits.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  commits,
}

extension AppRoutesExtension on AppRoutes {
  String get routePath {
    final route = switch (this) {
      AppRoutes.commits => '/commits',

      /// Add other routes ...
    };
    return route;
  }

  Widget routeView(BuildContext context, GoRouterState state) {
    final page = switch (this) {
      AppRoutes.commits => const CommitsPage(),

      /// Add other pages ...
    };
    return page;
  }
}
