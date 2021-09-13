import 'package:flutter/material.dart';
import 'package:task_4/views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T-shirt Design',
      theme: ThemeData(
        fontFamily: 'Proxima',
      ),
      home: MyHomePage(),
    );
  }
}
