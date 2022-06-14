import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_05/dog_model.dart';

import 'home_screen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Dog>(
      create: (context) => Dog(name: 'dog05', bread: 'bread05', age: 5),
      child:const MaterialApp(
          title: 'Provider 05',
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
    );
  }
}
