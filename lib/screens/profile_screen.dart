import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        backgroundColor: Colors.purple,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.person,
              size:80,
              color: Colors.purple,
            ),

            const SizedBox(height: 20),

            const Text(
              "My Profile",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}