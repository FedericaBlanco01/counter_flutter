part of 'counter_bloc.dart';

sealed class CounterEvent {
  const CounterEvent();
}

class Increment extends CounterEvent {
  final int value;
  const Increment(this.value);
}

class Decrement extends CounterEvent {
  const Decrement();
}

class Reset extends CounterEvent {
  const Reset();
}
