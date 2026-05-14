import 'package:flutter/material.dart';
import 'hero_second_screen.dart';

class HeroFirstScreen extends StatelessWidget {
  const HeroFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
      ),

      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HeroSecondScreen(),
              ),
            );
          },

          child: Hero(
            //animation widget, it connects:
            //one widget on first screen, same widget on second screen.,
            //and animates between them automatically.

            tag: 'profile-image',
            /*flutter matches same tag on first screen,
            same tag on second screeen to perform transition image.
            its like: unique animation id */

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: Image.asset(
                'assets/images/profile.jpeg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}