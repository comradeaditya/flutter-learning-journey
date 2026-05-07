import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget{
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context){

    double screenWidth = MediaQuery.of(context).size.width;
    /*gets current screen information
    .size.width -> gets device width
    */

    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),

      body: Center(
        child: Container(
          width: screenWidth * 0.8, //use 8-% of screen width
          height: screenHeight * 0.3, //

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Center(
            child: Text(
              "Responsive UI",
              style: TextStyle(
                fontSize: screenWidth * 0.06, // text grows/shrinks depending upon device size
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );

  }
}