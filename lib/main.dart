import 'package:introcard1/homescr_assignment2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CardConnect());
}

class CardConnect extends StatelessWidget {
  const CardConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
