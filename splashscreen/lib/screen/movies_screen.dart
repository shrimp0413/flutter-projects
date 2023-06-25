import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("movies screen",
            style: TextStyle(
            color: Colors.red,)),
            
            ElevatedButton(
              style:ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("go backward",)
            ),
          ],
        ),
      )
    );
  }
}