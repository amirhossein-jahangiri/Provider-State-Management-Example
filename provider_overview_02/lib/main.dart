import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_02/dog_model.dart';

import 'home_screen.dart';

void main() => runApp(
      Provider<Dog>(
        create: (context) => Dog(name: 'Sub', bread: 'Builddog', age: 3),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Provider 02',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
