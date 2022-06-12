import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blue.shade200,
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'Home Screen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CounterA(
                counter: counter,
                press: increment,
              ),
              const SizedBox(height: 20),
              Middle(counter: counter),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterA extends StatelessWidget {
  const CounterA({
    required this.counter,
    required this.press,
    Key? key,
  }) : super(key: key);

  final int? counter;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade200,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            counter.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          ElevatedButton(
            onPressed: press,
            child: const Text(
              'Increment',
              style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({required this.counter, Key? key}) : super(key: key);

  final int? counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CounterB(counter: counter),
          const SizedBox(width: 20),
          const Sibling(),
        ],
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  const CounterB({this.counter, Key? key}) : super(key: key);

  final int? counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade100,
      padding: const EdgeInsets.all(20.0),
      child: Text(
        counter.toString(),
        style: const TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade100,
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        'Sibling',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
