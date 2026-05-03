import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget{
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: Center(
        child: Card(
          elevation: 10, //shadow depth
          color: Colors.white, //card background color
          margin: const EdgeInsets.all(20), //space outside the card

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20), //inside spacing
            child: Column(
              mainAxisSize: MainAxisSize.min, //coloumn takes only needed height

              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/profile.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Bean",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  "Flutter Developer",

                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {},

                  child: const Text("Follow"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}