import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_14/counter_model.dart';
import 'package:provider_overview_14/counter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider 14')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Choose one of this buttons:',
              style: TextStyle(fontSize: 20.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/counter');
              },
              child: const Text(
                'Counter Screen',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: () => context.read<Counter>().increment(),
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
