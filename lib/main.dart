import 'package:rent_car/screens/carOverview.dart';
import 'package:rent_car/screens/homePage.dart';
import 'package:rent_car/screens/logIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'carRentApp',
      theme: ThemeData(
          primaryColor: Colors.white,
          disabledColor: Color(0xfff3f1fa),
          dividerColor: Color(0xff7033ff),
          highlightColor: Color(0xfff1ebff)),
      home: LogIn(),
    );
  }
}
