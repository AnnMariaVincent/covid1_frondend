import 'package:covidapplication/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(covidapp());
}
class covidapp extends StatelessWidget {
  const covidapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}

