import 'package:flutter/material.dart';

class PostCardScreen extends StatelessWidget{
  const PostCardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Social Post Card")
      ),
      
      body: SingleChildScrollView(  
        //makes screen scrollable
        child: Padding(
          padding: const EdgeInsets.all(15),

          child: Card(
            elevation: 8,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              /*In a Column, crossAxis is the horizontal direction. 
              .start aligns all children to the left edge. */

              children: [

                //top profile section
                Padding(
                  padding: const EdgeInsets.all(15),

                  child: Row(
                    children:[

                      const CircleAvatar(
                        radius: 25,

                        backgroundImage: AssetImage(
                          'assets/images/profile.jpeg',
                        ),
                      ),

                      const SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: const [

                          Text(
                            "Bean",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            "2 hours ago",

                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(), //pushes everything after it to the right

                      const Icon(Icons.more_vert), //vertical options icon (3 dots vertically aligned)
                    ],
                  ),
                ),

                //post image
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/camera.jpeg',

                    width: double.infinity,
                    height: 250,

                    fit: BoxFit.cover,
                  ),
                ),

                //caption section
                const Padding(
                  padding: EdgeInsets.all(15),

                  child: Text(
                    "Exploring Flutter UI development",

                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),

              // replace the entire Stack with this
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Row(
                  children: const [
                    Icon(Icons.favorite, size: 28, color: Colors.red),
                    SizedBox(width: 16),
                    Icon(Icons.comment_outlined, size: 28),
                    SizedBox(width: 16),
                    Icon(Icons.share_outlined, size: 28),
                    Spacer(), //pushes to the right                          // pushes bookmark to right
                    Icon(Icons.bookmark_border, size: 28),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 12),
                child: Text(
                  "120 likes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}