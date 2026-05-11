import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/screens/home_screen.dart';

class NewHomeScreen extends StatelessWidget{

  final VoidCallback onToggleTheme; 
  //stores the function coming from parent
  //final prevents accidental notification

  const NewHomeScreen({
    super.key,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Screen"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //themed card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.jpeg'),
                    ),
                    
                    const SizedBox(height: 12),

                    Text(
                      "Bean",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),

                    const SizedBox(height: 4),
                    
                    Text(
                      "Flutter Developer",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            //toggle button

            ElevatedButton(
              onPressed: onToggleTheme,
              child: const Text("Toggle Theme"),
            ),
          ],
        ),
      ),
    );
  }
}