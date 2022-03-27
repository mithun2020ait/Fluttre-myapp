import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: const Text("30 days of flutter"),
          ),
        ),
      ),
    );
  }
}
