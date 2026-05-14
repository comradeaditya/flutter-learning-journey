import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  
  bool isExpanded = false;

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
            duration: const Duration(milliseconds: 500),

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

            curve: Curves.easeInOut,

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