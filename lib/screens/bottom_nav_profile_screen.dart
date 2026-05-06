import 'package:flutter/material.dart';

class BottomNavProfileScreen extends StatelessWidget{
  const BottomNavProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text(
        "Profile Screen",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}