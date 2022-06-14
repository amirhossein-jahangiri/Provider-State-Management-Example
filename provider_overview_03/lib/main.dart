import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_03/dog_model.dart';

import 'home_screen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Provider 03',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
