import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/color/color_bloc.dart';
import 'blocs/counter/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(
          create: (context) => ColorBloc(),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc 2 Bloc',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int incrementSize = 1;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ColorBloc, ColorState>(
      listener: (context, state) {
        if (state.color == Colors.red) {
          incrementSize = 1;
        } else if (state.color == Colors.green) {
          incrementSize = 10;
        } else if (state.color == Colors.blue) {
          incrementSize = 100;
        } else if (state.color == Colors.black) {
          incrementSize = -100;
          context
              .read<CounterBloc>()
              .add(ChangeCounterEvent(incrementSize: incrementSize));
        }
        ;
      },
      child: Scaffold(
        backgroundColor: context.watch<ColorBloc>().state.color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text(
                  '색상변경',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () {
                  context.read<ColorBloc>().add(ChangeColorEvent());
                },
              ),
              const SizedBox(height: 20.0),
              Text(
                '${context.watch<CounterBloc>().state.counter}',
                style: const TextStyle(
                  fontSize: 52.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text(
                  '카운터변경',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () {
                  context
                      .read<CounterBloc>()
                      .add(ChangeCounterEvent(incrementSize: incrementSize));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
