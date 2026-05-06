import 'package:flutter/material.dart';
import 'bottom_nav_home_screen.dart';
import 'bottom_nav_search_screen.dart';
import 'bottom_nav_profile_screen.dart';

class BottomNavHomeScreen extends StatelessWidget{
  const BottomNavHomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text(
        "Home Screen",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}