import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  
  bool isExpanded = false;
  //isExpanded - state variable that tracks whether container is big or small
  //starts as false - container starts small

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500), //animation speed

            width: isExpanded ? 300 : 150,
            height: isExpanded ? 300 : 150,

            decoration: BoxDecoration(
              color: isExpanded
              ? Colors.deepPurple
              : Colors.orange,

            borderRadius: BorderRadius.circular(
              isExpanded ? 30 : 12,
            ),
            ),

            curve: Curves.easeIn, //controls animation feel

            child: Center(
              child: Text(
                isExpanded ? "Expanded" : "Tap Me",

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );    
  }
}