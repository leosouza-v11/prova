import 'package:flutter/material.dart';
import 'calculadora/calculadora.dart';

void main() {
  runApp(const Prova());
}

class Prova extends StatelessWidget {
  const Prova({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          
        primarySwatch: Colors.blue,
      ),
      home: const Calculadora(),
    );
  }
}
