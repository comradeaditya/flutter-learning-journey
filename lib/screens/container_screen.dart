import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget"),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          
          padding: const EdgeInsets.all(50),
          //Adds spacing on ALL sides.
          margin: const EdgeInsets.all(50),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            gradient: const LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10, //Controls softness. Higher = softer shadow
                spreadRadius: 5,
                offset: Offset(5,10),
              ),
            ],
          ),

          child: const Center(
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}