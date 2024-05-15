import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<Increment>(_onCounterIncrease);

    on<Decrement>(_onCounterDecrease);

    on<Reset>(_onReset);
  }

  void _onCounterIncrease(Increment event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: state.counter + event.value,
      actions: state.actions + 1,
    ));
  }

  void _onCounterDecrease(Decrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: state.counter - 1,
      actions: state.actions + 1,
    ));
  }

  void _onReset(Reset event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: 0,
      actions: state.actions + 1,
    ));
  }
}
