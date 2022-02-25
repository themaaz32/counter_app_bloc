import 'package:counter_app_bloc/feature/presentation/counter_screen.dart';
import 'package:counter_app_bloc/feature/presentation/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (BuildContext context) {
          return CounterBloc(0);
        },
        child: const CounterScreen(),
      ),
    );
  }
}
