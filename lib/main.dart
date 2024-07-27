import 'package:flutter/material.dart';
import 'package:meal_app/screen/HomePage.dart';
import 'package:meal_app/screen/MealScreen.dart';
void main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "mealScreen":(context)=>const MealScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const SafeArea(child: HomePage()),
    );
  }
}
