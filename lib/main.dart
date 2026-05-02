import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/second_screen.dart';
import 'screens/image_screen.dart';

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
      '/': (context) => const ImageScreen(),

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