import 'package:flutter/material.dart';
import 'package:flutterproject/component/color_checkbox.dart';
import 'package:flutterproject/provider/color_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
    providers:[
      ChangeNotifierProvider(
      create: (_) => ColorTheme(),
      ),
    ],
    child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: context.watch<ColorTheme>().color,
      ),

      home:Scaffold(
        appBar: AppBar(
          title: const Text("flutterproject"),
        ),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorCheckBox(color: "red"),
            ColorCheckBox(color: "green"),
            ColorCheckBox(color: "blue"),
          ],
        ),
      ),
    );
  }
}