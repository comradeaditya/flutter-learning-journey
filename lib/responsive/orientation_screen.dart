import 'package:flutter/material.dart';

class OrientationScreen extends StatelessWidget{
  const OrientationScreen({super.key});

  @override
  Widget build(BuildContext context){

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    //check current orientation
    Orientation orientation = MediaQuery.of(context).orientation;

    print(orientation == Orientation.portrait ? "Portrait" : "Landscape");

    //three boxes to display
    List<Widget> boxes = [
      Container(
        width: screenWidth * 0.25,
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            "Box 1",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      Container(
        width: screenWidth * 0.25,
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            "Box 2",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      Container(
        width: screenWidth * 0.25,
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        
        child: Center(
          child: Text(
            "Box 3",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientation")
      ),

      body: Center(
        child: orientation == Orientation.portrait
        ? Column(
          //portrait -> Column layout
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boxes[0],
            const SizedBox(height: 20),

            boxes[1],
            const SizedBox(height: 20),

            boxes[2],
          ],
        )
        : Row(
          //landscape -> Row layout
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: boxes,
        ),
      ),
    );
  }
}