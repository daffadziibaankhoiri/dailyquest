import 'package:dailyquest/Intro_pages/introduction.dart';
import 'package:dailyquest/pages/login_pages.dart';
import 'package:dailyquest/pages/register_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {

        '/login' : (context) => Login_Page(),
        '/register' : (context) => RegisterPage()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Introduction(),
      ),
    );
  }
}





