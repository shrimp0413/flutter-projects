import 'package:flutter/material.dart';
import 'package:splashscreen/screen/movies_screen.dart';
import 'package:splashscreen/screen/ranking_screen.dart';
import 'package:splashscreen/screen/recommand_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width *0.3,
            height: MediaQuery.of(context).size.height *0.2,
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Movies"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => const MoviesScreen(),
                ),
              );
            },
            ),
            ),

            Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width *0.3,
            height: MediaQuery.of(context).size.height *0.2,
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("ranking"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => const ranking(),
                ),
              );
            },
            ),
            ),

            Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width *0.3,
            height: MediaQuery.of(context).size.height *0.2,
            child: ElevatedButton(
            style:ElevatedButton.styleFrom(backgroundColor: Colors.red),  
            child: const Text("recommand"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => const recommand(),
                ),
              );
            },
            ),
            ),

          ],
          )
        ],
      ),
    );
  }
}