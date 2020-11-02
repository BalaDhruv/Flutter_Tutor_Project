import 'package:flutter/material.dart';
import 'package:test_hello/ui/home_screen.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
