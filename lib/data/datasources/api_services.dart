class ApiServices {
  static String commits(String owner, String repo) =>
      '/repos/$owner/$repo/commits';
}
