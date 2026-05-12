import 'package:flutter/material.dart';

class AdaptiveDashboardScreen extends StatelessWidget{
  const AdaptiveDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final orientation = MediaQuery.of(context).orientation;

    Widget buildCard(String title, Color color) {
      //function defined inside build() - local function
      return Container(
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive Dashboard"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: orientation == Orientation.portrait

        ? Column(
          //stacks vertically
          children: [ 
            buildCard("Analytics", Colors.blue),
            const SizedBox(height: 16),
            buildCard("Messages", Colors.orange),
            const SizedBox(height: 16),
            buildCard("Profile", Colors.green),
          ],
        )

        : Row(
          //spread horizontally
          children: [
            Expanded(
              //takes all remaining space equally
              child: buildCard("Analytics", Colors.blue),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: buildCard("Profile", Colors.green),
            ),
          ],
        )
      )
    );
  }
}