import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/responsive/responsive_card.dart';

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

        body: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child: Container(
              width: screenWidth * 0.8, //use 80% of screen width
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

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenWidth * 0.45,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Center(
                  child: Text(
                    "Box 1",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                width: screenWidth * 0.45,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                
                child: Center(
                  child: Text(
                    "Box 2",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          const ResponsiveCard(),

          const SizedBox(height: 20),
          
          GestureDetector(
            //makes any widget- tapable
            onTap: () {},
            child: Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  }
}