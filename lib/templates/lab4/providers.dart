import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProvider = Provider<String>((ref) {
  return "my Provider";
});

final messageProvider = FutureProvider<String>((ref) async {
  return Future.delayed(const Duration(seconds: 5), () {
    return "Hello Fututre World";
  });
});

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    state = state + 1;
  }
}
