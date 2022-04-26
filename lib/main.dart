import 'package:flutter/material.dart';
import 'pages/splash_pages.dart';
import 'pages/sign_in_pages.dart';
import 'pages/sign_up_pages.dart';
import 'pages/home/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPages(),
        '/sign-in': (contex) => SignInPages(),
        '/sign-up': (contex) => SignUpPages(),
        '/home': (contex) => MainPage(),
      },
    );
  }
}
