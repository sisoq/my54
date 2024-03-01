// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _getSavedThemeMode(); 
  }

  void _getSavedThemeMode() {
    
    _themeMode = ThemeMode.system;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomeScreen(
        updateThemeMode: (newThemeMode) {
          setState(() {
            _themeMode = newThemeMode;
          });
        },
      ),
    );
  }
}
