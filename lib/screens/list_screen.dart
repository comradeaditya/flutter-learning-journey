import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget{
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widget"),
      ),

      body: ListView(
        children: [
          ListTile(
            //ListTile is a ready-made row design.
            trailing: Icon(Icons.arrow_forward),
            title: Text("Aditya"),
            subtitle: Text("Flutter Developer"),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rahul"),
            subtitle: Text("UI Designer"),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aman"),
            subtitle: Text("Backend Developer"),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Karan"),
            subtitle: Text("App Developer"),
          ),
        ],
      ),
    );
  }
}