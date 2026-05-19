import 'package:flutter/material.dart';

class AnimationControllerScreen extends StatefulWidget {
  const AnimationControllerScreen({super.key});

  @override
  State<AnimationControllerScreen> createState() => _AnimationControllerScreenState();
}

// Add TickerProviderStateMixin - (Required for AnimationController)
//why this needed: AnimationContoller needs vsync, TickerProvideStateMixin provides that vsync.

class _AnimationControllerScreenState extends State<AnimationControllerScreen> with TickerProviderStateMixin {
  
  //create Controller
  late AnimationController controller;

  //Initialize Controller

  @override
  void initState() {
    super.initState(); //calls the parent's class's initState()

    controller = AnimationController(
      vsync: this, // connects animation screen refresh efficiently
      duration: const Duration(seconds: 2), // full animation time
    );

    controller.repeat(reverse: true); //infinite aimation loop
  }

  // dispose controller 
  // without dispose animation keeps running in memory

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimationController"),
      ),

      body: Center(
        child: RotationTransition(
          turns: controller,

          child: Container(
            width: 150,
            height:150,

            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}