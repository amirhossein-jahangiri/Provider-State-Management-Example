import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_06/babies_model.dart';
import 'package:provider_overview_06/dog_model.dart';

import 'home_screen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Dog>(
          create: (context) => Dog(name: 'dog06', bread: 'bread06', age: 3),
        ),
        FutureProvider<int>(
          create: (context) {
            final int dogAge = context.read<Dog>().age;
            final Babies babies = Babies(age: dogAge);
            return babies.getBabies();
          },
          initialData: 0,
        ),
      ],
      child: const MaterialApp(
        title: 'Provider 06',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
