import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget{
  const BuilderScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),

      body: ListView.builder(

        itemCount: 50, //Create 20 list items

        itemBuilder: (context,index){
          /*
          itemBuilder: (context, index)

          Flutter gives:
          > context
          > current item index

          context = where this widget is in the app
          */
          return ListTile(
            tileColor: index % 2 == 0 ? Colors.grey[200] : Colors.white,
            leading: Icon(
              index % 2 == 0 ? Icons.person : Icons.person_outline,
              ),

            title: Text(
              "User ${index + 1}",
            ),

            trailing: const Icon(
              //trailing = whatever goes on the right end of a list item 
              Icons.arrow_forward,
            ),
          );
        },
      ),
    );
  }
}