import 'package:flutter/material.dart';

import 'screens/green_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GreenScreen(), // Define a tela verde como a tela inicial
    );
  }
}