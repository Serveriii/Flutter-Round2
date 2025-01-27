import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 72, 12, 236),
              Color.fromARGB(255, 117, 5, 209)
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Some text.',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ),
  ));
}
