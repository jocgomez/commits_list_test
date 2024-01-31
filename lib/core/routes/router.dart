import 'package:commits_list_test/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.commits.routePath,
    routes: [
      GoRoute(
        path: AppRoutes.commits.routePath,
        builder: AppRoutes.commits.routeView,
      ),
    ],
  );
}
