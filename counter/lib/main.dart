import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Counter()
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 300,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               width: 150,
               height: 100,
               color: Colors.amber,
               child: Text(
                 "$count",
                 style: TextStyle(
                   fontSize: 100,

                 ),
                 textAlign: TextAlign.center,
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 ElevatedButton(onPressed: (){
                   setState(() {
                     count--;
                   });
                 }, child: Text("minus")),
                 ElevatedButton(onPressed: (){
                   setState(() {
                     count++;
                   });
                 }, child: Text("plus")),
               ],
             )
           ],
         ),
        ),
      ),
    );
  }
}
