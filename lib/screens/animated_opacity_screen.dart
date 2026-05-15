import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedOpacity"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            AnimatedOpacity(
              opacity: isVisible ? 1.0 : 0.0,

              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,

              child: Container(
                width: 200,
                height: 200,
                
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Center(
                  child: Text(
                    "Fade Animation",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: ()  {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: const Text("Toggle Fade"),
            ),
          ],
        ),
      ),
    );
  }
}