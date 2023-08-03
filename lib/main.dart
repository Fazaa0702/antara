import 'package:antara/views/home/main/home_view.dart';
import 'package:antara/views/activity/main/add_activity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Daily Healthy Habit',
      color: Color(0xFFE61A4F),
      theme: ThemeData(
        backgroundColor: Color(0xFFE61A4F),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

