import 'package:teste/view/list.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 175, 20, 154)),
      ),
      home: ListAutor(),
    );
  }



}
