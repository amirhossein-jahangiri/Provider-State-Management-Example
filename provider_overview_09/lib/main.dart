import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'foo_model.dart';
import 'home_screen.dart';

void main() =>
    runApp(
        ChangeNotifierProvider(create: (context) => Foo(), child: MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Provider 09',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
