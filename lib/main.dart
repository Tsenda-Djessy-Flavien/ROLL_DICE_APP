import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 75, 39, 95), // Colors.deepPurple,
        body: Center(
          child: Text('Hello World !'),
        ),
      ),
    ),
  );
}
