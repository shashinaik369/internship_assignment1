// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

Widget sizedBox() => SizedBox(
      width: 10,
    );

Widget subButton({
  required String text,
}) =>
    Card(
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
    );

Widget buildButton({
  required String text,
  required Color color,
  required VoidCallback onClicked,
}) =>
    RaisedButton(
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
      onPressed: onClicked,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(vertical: 16),
    );
