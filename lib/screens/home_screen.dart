import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(
              //open new screen
              /* 
              Navigator.push(context, ...)

              Navigator is Flutter's built-in screen manager — it works like a stack of screens
              .push() adds a new screen on top of the current one
              context tells Flutter which app/navigator to use
              */
              context,

              '/second',

              arguments: {
                'username': 'Bean',
                'age': 20,
                'city': 'Mumbai',
                'email': 'bean@gmail.com',
                'imageUrl': 'https://i.pravatar.cc/150',
              },
            );
          },
          child: const Text(
            "Go to Second Screen",
          ),
        ),
      ),
    );
  }
}