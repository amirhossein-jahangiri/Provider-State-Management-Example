import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_13/counter_model.dart';
import 'counter_screen.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Counter _counter = Counter();

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider 13',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ChangeNotifierProvider.value(
              value: _counter,
              child: const HomeScreen(),
            ),
        '/counter': (context) => ChangeNotifierProvider.value(
              value: _counter,
              child: const CounterScreen(),
            ),
      },
    );
  }
}
