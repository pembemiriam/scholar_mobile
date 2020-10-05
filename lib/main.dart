import 'package:flutter/material.dart';
import 'package:scholar/routes.dart';
import 'package:scholar/screens/welcomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scholar',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(), //first page
      routes: Routes().routes,
    );
  }
}

