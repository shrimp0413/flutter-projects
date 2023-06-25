import 'dart:async';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    Timer(
      const Duration(milliseconds: 1500),
      (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50.0),
              child: Text(
              "Netflix".toUpperCase(),
              style: const TextStyle(
              color: Colors.red,
              fontSize: 50.0,
              ),
              ),
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}