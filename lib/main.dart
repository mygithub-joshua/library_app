import 'package:flutter/material.dart';
import 'package:library_app/screens/sign_in_page.dart';
import 'package:library_app/screens/splash_page.dart';
import '/screens/home_screen.dart';
import '/screens/selected_book_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
