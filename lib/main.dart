import 'package:flutter/material.dart';
import 'package:flutter_bl/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: BlocBuilder<CounterBloc, int>(
          builder: (BuildContext context, int state) {
            return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){
                      BlocProvider.of<CounterBloc>(context).add(DecEvent());
                    }, child: const Text("-")),
                    const SizedBox(width: 20),
                    Text(state.toString()),
                    const SizedBox(width: 20),
                    TextButton(onPressed: (){
                      BlocProvider.of<CounterBloc>(context).add(IncEvent());
                    }, child: const Text("+")),
                  ],)
              ],
              ),
          );
          },
        ),
      ),
    );
  }
}