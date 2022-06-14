import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_10/dog_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider 08')),
      body: Center(
        child: Selector<Dog, String>(
          selector: (BuildContext context, Dog dog) => dog.name!,
          builder: (BuildContext context, String name,Widget? child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'name: $name',
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                const BreadAndAge(),
              ],
            );
          },
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
      child: Selector<Dog, String>(
        selector: (BuildContext context, Dog dog) => dog.bread!,
        builder: (BuildContext context, String bread, Widget? child) {
          return Column(
            children: <Widget>[
              Text(
                'Bread: $bread',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 10.0),
              const Age(),
            ],
          );
        },
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
      child: Selector<Dog, int>(
        selector: (BuildContext context, Dog dog) => dog.age,
        builder: (BuildContext context, int age, Widget? child) {
          return Column(
            children: <Widget>[
              Text(
                'Age: $age',
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
          );
        },
      ),
    );
  }
}
