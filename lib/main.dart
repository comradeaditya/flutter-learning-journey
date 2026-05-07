import 'package:flutter/material.dart';
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
import 'screens/expanded_screen.dart';
import 'screens/alrert_dialog_screen.dart';
import 'screens/post_card_screen.dart';
import 'responsive/media_query_screen.dart';

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
      '/': (context) => const MediaQueryScreen(),

      '/second': (context) => const SecondScreen(),

    },
    );
  }
}