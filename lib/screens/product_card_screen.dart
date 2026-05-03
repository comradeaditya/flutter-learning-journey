import 'package:flutter/material.dart';

class ProductCardScreen extends StatelessWidget{
  const ProductCardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Product Card"),
      ),

      body: Center(
        child: Card(
          elevation: 10,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          child: SizedBox(
            width: 250, //controls card width

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [

                Stack(
                  children:[
                    //bottom layer
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20), //rounds only top image corners
                      ),

                      child: Image.asset(
                        "assets/images/camera.jpeg",
                        height: 180,
                        width: double.infinity, //takes maximum available width

                        fit: BoxFit.cover, //fills area nicely, without distortion 
                      ),
                    ),

                    //top layer- favourite icon positioned top-right
                    Positioned(
                      //Positioned only works inside Stack
                      top: 8, //distance from top edge
                      right: 8, //distance from right edge
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape:BoxShape.circle, //makes container perf
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 15),

                //product title
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                  "Canon Camera R5+",

                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),

                const SizedBox(height: 10),

                //price
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                  "\$999",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),

                const SizedBox(height: 10),

                //rating section

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),

                  SizedBox(width: 5),

                   Padding(
                    padding: EdgeInsets.all(15),
                    child:  Text(
                      "4.8",
                      style: TextStyle(fontSize: 18),
                    ),
                   ),
                  ],
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                  onPressed: () {},

                  child: const Text("BUY"),
                ),

                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}