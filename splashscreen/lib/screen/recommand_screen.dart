import 'package:flutter/material.dart';

class recommand extends StatelessWidget {
  const recommand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("recommand",
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