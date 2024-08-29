import 'package:flutter/material.dart';
import 'screens/white_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhiteScreen(), // Define a tela verde como a tela inicial
    );
  }
}