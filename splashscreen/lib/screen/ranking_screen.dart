import 'package:flutter/material.dart';

class ranking extends StatelessWidget {
  const ranking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("ranking",
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