part of 'counter_bloc.dart';

final class CounterState {
  final int counter;
  final int actions;

  const CounterState({this.counter = 0, this.actions = 0});

  copyWith({int? counter, int? actions}) => CounterState(
        counter: counter ?? this.counter,
        actions: actions ?? this.actions,
      );
}
