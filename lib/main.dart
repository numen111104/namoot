import 'package:flutter/material.dart';
import 'package:namoot/screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      ),
      home: HomeScreen(),
    );
  }
}