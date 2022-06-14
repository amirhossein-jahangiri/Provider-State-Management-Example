import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_09/foo_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider 09'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Foo>(
              builder: (context, Foo foo, child) {
                return Text(
                  foo.value,
                  style: const TextStyle(fontSize: 20.0),
                );
              },
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                context.read<Foo>().changeValue();
              },
              child: const Text(
                'Change Value',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
