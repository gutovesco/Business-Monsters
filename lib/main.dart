import 'package:flutter/material.dart';
import 'package:test_project/home.dart';

void main() 
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
