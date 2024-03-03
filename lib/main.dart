import 'package:exam/News_page.dart';
import 'package:exam/Workout_page.dart';
import 'package:flutter/material.dart';

import 'Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        Workoutpage.routename:(context) => Workoutpage(),
        Newspage.routename:(context) => Newspage(),
      },
    );
  }
}

