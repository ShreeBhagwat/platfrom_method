import 'package:flutter/material.dart';
import 'package:platfrom_method/home_screen.dart';


void main() {
  runApp(const PlatfromChannel());
}

class PlatfromChannel extends StatelessWidget {
  const PlatfromChannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );

  }
}
