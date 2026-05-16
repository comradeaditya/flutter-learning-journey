import 'package:flutter/material.dart';

class SecondRouteScreen extends StatelessWidget {
  const SecondRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),

      body: const Center(
        child: Text(
          "Custom Route Animation",

          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}