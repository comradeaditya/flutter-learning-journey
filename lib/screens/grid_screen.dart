import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget{
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Widget"),
      ),

      body: GridView.builder(
        itemCount: 20,

        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
        //This controls the grid layout:
        crossAxisCount: 2, //2 items per row

        crossAxisSpacing: 10, //horizontal
        mainAxisSpacing: 10, //vertical
        ),

        itemBuilder: (context,index){
          //Runs for each item — builds one box at a time
          /*
          index 0  > Item 1
          index 1  > Item 2
          index 19 > Item 20
          */

          return Container(

            child: Center(
              child: Text(
                "Item ${index + 1}",
                
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            decoration: BoxDecoration(
              color: index % 2 == 0 ? Colors.blue : Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
          );
        },
      ),
    );
  }
}