import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(
        context,
        '/sign-in',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 220,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/logo-ke-bwh.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
