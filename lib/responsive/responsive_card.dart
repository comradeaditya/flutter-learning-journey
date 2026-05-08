import 'package:flutter/material.dart';

class ResponsiveCard extends StatelessWidget{
  const ResponsiveCard({super.key});

  @override
  Widget build(BuildContext context){
    
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.8,
      padding: EdgeInsets.all(screenWidth * 0.05),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          //takes a list
          BoxShadow(
            color: Colors.grey.withValues(
              alpha: 0.3,
            ), //30% visible (soft shadow)
            blurRadius: 10,
            offset: const Offset(0, 5), //where shadow sits relative to widget
          ),
        ],
      ),
      child: Column(
        children: [
          //profile image
          CircleAvatar(
            radius: screenWidth * 0.12,
            backgroundImage: const AssetImage('assets/images/profile.jpeg'),
          ),

          SizedBox(height: screenHeight * 0.02),

          //name
          Text(
            "Bean",
            style: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 20),

          //role
          Text(
            "Flutter Developer",
            style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
