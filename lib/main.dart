import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/screens/slider_screen/slider_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderScreen()
    );
  }
}
