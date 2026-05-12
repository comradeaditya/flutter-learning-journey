import 'package:flutter/material.dart';

class LayoutBuilderScreen  extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: LayoutBuilder(
          //gives space available inside parent
          builder: (context, constraints) {

            //available width
            double width = constraints.maxWidth;
            
            //constraints.maxWidth = 

            if(width < 600) {
              //mobile layout
              return Column(
                children: [
                  buildCard("Mobile Card", Colors.blue),
                  const SizedBox(height: 16),
                  buildCard("Responsive UI", Colors.orange),
                ],
              );
            } else {
              //tablet/Large screen Layout
              return Row(
                children: [
                  Expanded(
                    child: buildCard("Tablet Card", Colors.green),
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: buildCard("Large Layout", Colors.purple),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildCard(String title, Color color) {
    //reusable Widget Method
    return Container(
      height: 150,

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
}