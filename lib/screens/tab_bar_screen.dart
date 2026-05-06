import 'package:flutter/material.dart';
import 'tab_home_screen.dart';
import 'tab_favorites_screen.dart';
import 'tab_profile_screen.dart';

class TabBarScreen extends StatelessWidget{
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      //controls which tab is active

      length: 3, //total number of tabs

      child: Scaffold(

        appBar: AppBar(
          title: const Text(
            "TabBar Example",
          ),

          bottom: const TabBar(
            //bottom - is a property of AppBar that places a widget below the title bar
            //TabBar() - creates clickable tab row inside AppBar
            //it connects automatically to DefaultTabController
            
            labelColor: Colors.indigo, //selected tab color
            unselectedLabelColor: Colors.grey, //inactive apps
            indicatorColor: Colors.indigoAccent, //the underline color
            
            indicatorWeight: 3, //underline thickness

            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),

              Tab(
                icon: Icon(Icons.favorite),
                text: "Favorites",
              ),

              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
            ],
          ),
        ),

        body: const TabBarView(
          //displays the content for each tab
          //children index matches tabs index exactly
          //also support swipe gestures 

          children: [

            TabHomeScreen(),
            TabFavoritesScreen(),
            TabProfileScreen(),
          ],
        ),
      ),
    );
  }
}