import 'package:flutter/material.dart';
import 'screen/input_page.dart';
void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(
            0xFF0A0D22,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: const InputPage(),
    );
  }
}

