import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider 14')),
      body: Center(
        child: Selector<Counter, int>(
          selector: (BuildContext context, Counter counter) => counter.counter,
          builder: (BuildContext context, int counter, Widget? child) {
            return Text(
              counter.toString(),
              style: const TextStyle(fontSize: 40.0),
            );
          },
        ),
      ),
    );
  }
}
