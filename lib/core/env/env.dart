import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'GITHUB_PVKEY_JOCGOMEZ', obfuscate: true)
  static String ghPVKey = _Env.ghPVKey;
}
