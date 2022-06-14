import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_04/dog_model.dart';

import 'home_screen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Dog>(
      create: (context) => Dog(name: 'dog04', bread: 'bread04'),
      child:const MaterialApp(
          title: 'Provider 04',
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
    );
  }
}
