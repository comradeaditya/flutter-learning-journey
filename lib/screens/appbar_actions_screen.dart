import 'package:flutter/material.dart';

class AppBarActionsScreen extends StatelessWidget{
  const AppBarActionsScreen({super.key});

  //helper method- write once use everywhere
  void showSnack(BuildContext context, String message){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,         
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          "AppBar Actions",
        ),

        actions: [  //List of widgets show
          IconButton(
            onPressed: () {
              showSnack(context, "Search Clicked");
            }, 

            icon: const Icon(
              Icons.search,
            ),
          ),

          IconButton(
            onPressed: () {
              showSnack(context, "Notification Clicked");
            }, 
            
            icon: const Icon(
              Icons.notifications,
            ),
          ),

          PopupMenuButton( //3-dot dropdown menu
            onSelected: (value){
              
              //OnSelected- runs when menu item is selected
              
              showSnack(context, "$value Selected");

            },

            itemBuilder: (context) => [

              const PopupMenuItem(
                value: "Settings",
                child: Text("Settings"),
              ),

              const PopupMenuItem(
                value: "Logout",
                child: Text("Logout"),
              ),

              const PopupMenuItem(
                value: "Help",
                child: Text("Help"),
              )
            ],
          ),

          IconButton(
            onPressed: () {
              showSnack(context, "Profile Clicked");
            }, 

            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),

      body: const Center(
        child: Text(
          "AppBar Actions Example",
        ),
      ),
    );
  }
}