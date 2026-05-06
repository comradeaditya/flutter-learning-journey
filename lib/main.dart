import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/screens/alrert_dialog_screen.dart';
import 'package:flutter_learning_journey/screens/appbar_actions_screen.dart';
import 'package:flutter_learning_journey/screens/post_card_screen.dart';
import 'package:flutter_learning_journey/screens/tab_bar_screen.dart';
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';
import 'screens/image_screen.dart';
import 'screens/card_screen.dart';
import 'screens/product_card_screen.dart';
import 'screens/snackbar_screen.dart';
import 'screens/appbar_actions_screen.dart';
import 'screens/drawer_screen.dart';
import 'screens/bottom_nav_screen.dart';
import 'screens/bottom_nav_home_screen.dart';
import 'screens/bottom_nav_search_screen.dart';
import 'screens/bottom_nav_profile_screen.dart';
import 'screens/tab_bar_screen.dart';

void main(){
  runApp(const MyApp());
  //myApp (root)
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,

    initialRoute: '/',

    routes: {
      '/': (context) => const TabBarScreen(),

      '/second': (context) => const SecondScreen(),

    },
    );
  }
}

/*
App launches
     │
     ▼
  MyApp (root)
     │
     ▼
  MaterialApp ──── sets up Navigator (screen stack)
     │
     ▼
  HomeScreen  ←──────────────────────────────┐
     │                                        │
  [button tap]                         Navigator.pop()
     │                                        │
     ▼                                        │
  Navigator.push() ──── "Aditya" ──→  SecondScreen
*/