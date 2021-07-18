import 'package:flutter/material.dart';
import 'Screens/home.dart';




void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      title: 'Buttons',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
