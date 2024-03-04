import 'package:flutter/material.dart';
import 'package:counter/presentantion/screens/counter/counter_screen_functions.dart';
// import 'package:flutter_application_1/presentantion/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple),
      // home: const CounterScreen()
      home: const CounterFunctionScreen()
    );
  }

}