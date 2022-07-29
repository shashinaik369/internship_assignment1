import 'package:flutter/material.dart';

class AC extends StatefulWidget {
  String text;
  AC({Key? key, required this.text}) : super(key: key);

  @override
  State<AC> createState() => _ACState();
}

class _ACState extends State<AC> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInBack,
      child: Text(widget.text),
    );
  }
}
