import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_04/dog_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider 04')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'name: ${Provider.of<Dog>(context, listen: false).name}',
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
            'Bread: ${Provider.of<Dog>(context, listen: false).bread}',
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
            'Age: ${Provider.of<Dog>(context).age}',
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              Provider.of<Dog>(context, listen: false).grow();
            },
            child: const Text('grow'),
          ),
        ],
      ),
    );
  }
}
