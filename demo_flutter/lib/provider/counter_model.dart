import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterModel {
  const CounterModel(this.count);

  final int count;
}

class CounterNotifier extends StateNotifier<CounterModel> {
  CounterNotifier() : super(const CounterModel(0));

  void increase() {
    state = CounterModel(state.count + 1);
  }
}

final counterProvider = StateNotifierProvider<CounterNotifier, CounterModel>((ref) => CounterNotifier());



