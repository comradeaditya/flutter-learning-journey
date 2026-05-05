import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget{
  const DrawerScreen({super.key});

  void showSnack(BuildContext context, String message){
    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.blue,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void handleDrawerTap(BuildContext context, String message){
    Navigator.pop(context);
    showSnack(context, message);
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: const Text(  
          "Drawer Widget",
        ),
      ),

      drawer: Drawer(
        //Adding drawer to Scaffold automatically adds the hamburger menu icon to the AppBar
        //drawer: property of Scaffold
        child: ListView(
          //ListView : inside it makes the items scrollable if they overflow
          padding: EdgeInsets.zero, //removes default top padding

          children: [
            UserAccountsDrawerHeader(

              /*designed for Drawer headers: provides- 
              - profile image on left
              - Name and email below it
              - Material Desgign styled background
              */

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),

              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.phone, color: Colors.blue),
                ),
              ],

              accountName: const Text("Bean"),

              accountEmail: const Text("bean@gmail.com"),

              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.home,
              ),

              title: const Text(
                "Home",
              ),

              onTap: () => handleDrawerTap(context, "Home Clicked"),
            ),

            ListTile(
              leading: const Icon(
                Icons.person,
              ),

              title: const Text(
                "Profile",
              ),

                onTap: () => handleDrawerTap(context, "Profile Clicked"),
            ),

            ListTile(
              leading: const Icon(
                Icons.favorite,
              ),

              title: const Text(
                "Favorites",
              ),
              onTap: () => handleDrawerTap(context, "Favorites Clicked"),
            ),

            ListTile(
              leading: const Icon(
                Icons.settings,
              ),

              title: const Text(
                "Settings",
              ),
              
              onTap: () => handleDrawerTap(context, "Settings Clicked"),
            ),

            const Divider(), //simple horizontal line use to separate sections visually.

            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
              ),

              title: const Text(
                "Logout",
              ),

              onTap: () => handleDrawerTap(context, "Logout Clicked"),
            ),
          ],
        ),
      ),
      
      body: const Center(
        child: Text(
          "Swipe from left or tap menu icon",
        ),
      ),
    );
  }
}