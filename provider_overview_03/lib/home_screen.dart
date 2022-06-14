import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_03/dog_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Dog dog = Dog(name: 'dog03', bread: 'bread03');

  void dogListeners() {
    print('dog listeners: ${dog.age}');
  }

  @override
  void initState() {
    super.initState();
    dog.addListener(dogListeners);
  }

  @override
  void dispose() {
    super.dispose();
    dog.removeListener(dogListeners);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider 03')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'name: ${dog.name}',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            BreadAndAge(dog: dog),
          ],
        ),
      ),
    );
  }
}

class BreadAndAge extends StatelessWidget {
  final Dog? dog;
  const BreadAndAge({this.dog, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      child: Column(
        children: <Widget>[
          Text(
            'Bread: ${dog!.bread}',
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          Age(dog: dog),
        ],
      ),
    );
  }
}

class Age extends StatelessWidget {
  final Dog? dog;
  const Age({this.dog, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade200,
      child: Column(
        children: <Widget>[
          Text(
            'Age: ${dog!.age}',
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              dog!.grow();
            },
            child: const Text('grow'),
          ),
        ],
      ),
    );
  }
}
