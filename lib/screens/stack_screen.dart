import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget{
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),

      body: Center(
        child: Stack(
          alignment: Alignment.center,

          children: [

            //Profile Circle
            Container(
              width: 200,
              height: 200,

              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
              
            //online indicator
            Positioned(
              bottom: 20,
              right: 20,

              child: Container(
                width: 40,
                height: 40,

                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.check,
                  color: Colors.white,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}