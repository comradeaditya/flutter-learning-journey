import 'package:flutter/material.dart';

class ResponsiveGridScreen extends StatelessWidget {
  const ResponsiveGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Grid"),
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount; 

          if(constraints.maxWidth < 600){
            crossAxisCount = 2;
          } else if (constraints.maxWidth < 900) {
            crossAxisCount = 3;
          } else {
            crossAxisCount = 4;
          }

        return Padding(
          padding: const EdgeInsets.all(16),

          child: GridView.builder(
            itemCount: 10, //no of cards

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //controls how grid behaves
              //gridDelegate is mandatory in Grid View
              crossAxisCount: crossAxisCount, //creates a grid with dynamic column count
              //this connects 2/3/4 columns to the grid layout dynamically
              
              crossAxisSpacing: 16, //horizontal spacing between cards
              mainAxisSpacing: 16, //vertical spacing between rows
              
              childAspectRatio: 2, //controls height ratio
              ),

              itemBuilder: (context, index) {
                //creates cards dynamically
                //index changes automatically
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Card ${index + 1}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}