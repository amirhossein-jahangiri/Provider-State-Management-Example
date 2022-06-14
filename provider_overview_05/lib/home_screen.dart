import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_05/dog_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider 05')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'name: ${context.read<Dog>().name}',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            const BreadAndAge(),
          ],
        ),
      ),
    );
  }
}

class BreadAndAge extends StatelessWidget {
  const BreadAndAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      child: Column(
        children: <Widget>[
          Text(
            'Bread: ${context.read<Dog>().bread}',
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          Age(),
        ],
      ),
    );
  }
}

class Age extends StatelessWidget {
  const Age({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade200,
      child: Column(
        children: <Widget>[
          Text(
            'Age: ${context.select<Dog, int>((Dog dog) => dog.age)}',
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              context.read<Dog>().grow();
            },
            child: const Text('grow'),
          ),
        ],
      ),
    );
  }
}
