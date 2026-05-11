import 'package:flutter/material.dart';
import 'package:flutter_learning_journey/screens/theme_screen.dart';
import 'theme/app_theme.dart';
import 'screens/new_home_screen.dart';
import 'package:flutter_learning_journey/screens/text_theme_screen.dart';

void main(){
  runApp(const MyApp());
  //myApp (root)
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: AppTheme.lightTheme,

      home: const TextThemeScreen(),
    );
  }
}