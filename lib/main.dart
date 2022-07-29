// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internship_assignment/animatedmainpage.dart';
import 'package:internship_assignment/mainpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Internship Assignment';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.green),
        home: AnimatedMainPage(title: title),
      );
}
