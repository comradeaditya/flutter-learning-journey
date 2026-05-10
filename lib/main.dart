import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/new_home_screen.dart';

void main(){
  runApp(const MyApp());
  //myApp (root)
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;
  /* ThemeMode is a 'data type' (Flutter enum) with two values:
  ThemeMode.light
  ThemeMode.dark
  ThemeMode.system

  _themeMode starts as ThemeMode.light - app launches in light mode
  */
  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
      ? ThemeMode.dark
      : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme, //default light theme
      darkTheme: AppTheme.darkTheme, //dark theme configuration

      themeMode: _themeMode, //controls which one is active right now

      home: NewHomeScreen(
        onToggleTheme: toggleTheme,
        //give toggleTheme function to NewHomeScreen
      ),
    );
  }
}