import 'package:riverpod/riverpod.dart';

final commitsProvider = StateNotifierProvider.autoDispose((ref) {
  return Commits();
});

class Commits extends StateNotifier<int> {
  Commits() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
