import 'package:flutter/material.dart';

class HeroSecondScreen extends StatelessWidget {
  const HeroSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Center(
        child: Hero(
          tag: 'profile-image',

          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),

            child: Image.asset(
              'assets/images/profile.jpeg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}