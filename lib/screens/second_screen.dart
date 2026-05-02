import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context){
    
    //extract the map sent from screen
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    final username = args['username']; //access value using Map key
    final age = args['age'];
    final city = args['city'];
    final email= args['email'];
    final imageUrl = args['imageUrl'];
    
    //BuildContext context gives the widget its position in the widget tree
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white, //white Text and back arrow
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:[

            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
            ),
            
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              username,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Email: $email",
              style: const TextStyle(fontSize: 22),
            ),

            Text(
              "Age: $age",
              style: const TextStyle(fontSize: 22),
            ),

            Text(
              "City: $city",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}