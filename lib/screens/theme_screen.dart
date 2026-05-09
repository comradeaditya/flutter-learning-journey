import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/theme/app_colors.dart';
import 'package:flutter_learning_journey/theme/app_theme.dart';

class ThemeScreen extends StatelessWidget{
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("ThemeData"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
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

            //themed button
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),

            const SizedBox(height: 12),

            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),

            const SizedBox(height: 12),

            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
          ],
        ),
      ),
    );
  }
}