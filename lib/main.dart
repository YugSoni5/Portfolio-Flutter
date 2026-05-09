import 'package:flutter/material.dart';
import 'package:my_app/screens/homescreen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'yugsoni.com',
      debugShowCheckedModeBanner: false,
      home: Screen(),
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
    );
  }
}
