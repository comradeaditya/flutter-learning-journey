import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget{
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Image Widget"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              color: Colors.blue, //background behind the image
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/profile.jpeg', //path registered in pubspec.yaml
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                )
              )
            ),
            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(20), //less round = card style
              child: Image.asset('assets/images/profile.jpeg', width: 300, height: 200, fit: BoxFit.cover),
            ),

            const Text(
              "Bean",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}