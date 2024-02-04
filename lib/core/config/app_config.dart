import 'package:commits_list_test/core/env/env.dart';

class AppConfigs {
  static String baseUrl = 'https://api.github.com';

  /// Github API configuration
  static String ghBearerToken = Env.ghPVKey;
  static String ghUsername = 'jocgomez';
  static String ghRepository = 'commits_list_test';
}
