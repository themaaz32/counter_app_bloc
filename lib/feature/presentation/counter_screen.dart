import 'package:counter_app_bloc/feature/presentation/counter_events.dart';
import 'package:counter_app_bloc/feature/presentation/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (BuildContext context, int state) {
                return Text(
                  state.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {
                counterBloc.add(IncrementEvent());
              },
              child: const Text("Increase"),
            ),
            TextButton(
              onPressed: () {
                counterBloc.add(DecrementEvent());
              },
              child: const Text("Decrease"),
            ),
            TextButton(
              onPressed: () {
                counterBloc.add(ResetEvent());
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
