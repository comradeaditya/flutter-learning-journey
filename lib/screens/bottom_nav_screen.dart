import 'package:flutter/material.dart';
import 'bottom_nav_home_screen.dart';
import 'bottom_nav_search_screen.dart';
import 'bottom_nav_profile_screen.dart';

class BottomNavScreen extends StatefulWidget{
  //needed because tab selection changes
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
  //createState() - connects widget to mutable state
  //<BottomNavScreen> - is like label on the box
  //_BottomNavScreenState - is where all the changing data lives
}

class _BottomNavScreenState extends State<BottomNavScreen>{
  int selectedIndex = 0;
  // A state variable - lives inside the State class  

  final List<Widget> screens = [
    //A list where each item is a Widget
    //Index matches the tab index
    
    const BottomNavHomeScreen(),
    const BottomNavSearchScreen(),
    const BottomNavProfileScreen(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Bottom Navigation Bar",
        ),
      ),
      body: screens[selectedIndex], //dynamically shows the screen based on which tab is selected.

      bottomNavigationBar: BottomNavigationBar(
        //creates navigation menu at the bottom
        currentIndex: selectedIndex, //tells BottomNavigatonBar which tab to highlight.
        //without this, no tab ever looks selected.

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,
        //fixed keeps all tabs stable and evenly spaced
        //without this, flutter sometimes shifts items.
        
        onTap: (index) {
          //runs whenever user taps a tab
          //flutter automatically gives - the tapped tab index, ex: 0,1,2
          setState(() {
            //Tells flutter- something changed- rebuild UI
            selectedIndex = index;
            //updates active tab, tap profile -> selectedIndex becomes 2
            //rebuilds UI after state change
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Home",
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: "Search",
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: "Profile",
            ),
        ],
      ),
    );
  }
}
