import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 75, 39, 95), // Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 53, 5, 62),
                Color.fromARGB(255, 70, 6, 81),
              ],
            ),
          ),
          child: const Center(
            child: Text('Hello World !'),
          ),
        ),
      ),
    ),
  );
}
