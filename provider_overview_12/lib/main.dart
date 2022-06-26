import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_12/counter_model.dart';

import 'home_screen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider 12',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Counter(),
        child: const HomeScreen(),
      ),
    );
  }
}
