import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/presentation/blocs/counter_bloc/counter_bloc.dart';

class CounterBlocScreen extends StatelessWidget {
  const CounterBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const BlocCounterView(),
    );
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({
    super.key,
  });

  void handleIncrement(BuildContext context, {int value = 1}) {
    context.read<CounterBloc>().add(Increment(value));
  }

  void handleDecrement(BuildContext context) {
    context.read<CounterBloc>().add(const Decrement());
  }

  void handleReset(BuildContext context) {
    context.read<CounterBloc>().add(const Reset());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with BLoC'),
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () => {handleReset(context)})
        ],
      ),
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Column(children: [
                  Text('Counter: ${state.counter}'),
                  Text('Number of Actions: ${state.actions}'),
                ]);
              },
            ),
          ],
        ),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => {handleIncrement(context)},
            heroTag: 'btn1',
            tooltip: 'Increment',
            child: const Text('+1'),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => {handleDecrement(context)},
            heroTag: 'btn2',
            tooltip: 'Decrement',
            child: const Text('-1'),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => {handleIncrement(context, value: 2)},
            heroTag: 'btn3',
            tooltip: 'Increment by 2',
            child: const Text('+2'),
          ),
        ],
      ),
    );
  }
}
