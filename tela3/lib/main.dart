import 'package:flutter/material.dart';
import 'sceens/red_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RedScreen(), // Define a tela verde como a tela inicial
    );
  }
}