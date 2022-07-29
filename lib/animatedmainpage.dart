// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internship_assignment/widgets.dart';

class AnimatedMainPage extends StatefulWidget {
  final String title;

  const AnimatedMainPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _AnimatedMainPageState createState() => _AnimatedMainPageState();
}

class _AnimatedMainPageState extends State<AnimatedMainPage> {
  final key = GlobalKey<ScaffoldState>();

  bool isVisibleA = false;
  bool isVisibleB = false;

  bool clickedColor = false;
  bool clickedSize = false;

  var boxColor = Colors.deepPurple;

  double boxheight = 70;
  double boxwidth = 70;

  void _expandBox() {
    setState(() {
      clickedSize = !clickedSize;
    });
  }

  void _changeColor() {
    setState(() {
      clickedColor = !clickedColor;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: key,
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(
                    text: 'A',
                    color: Colors.pink,
                    onClicked: () {
                      setState(() {
                        isVisibleA = !isVisibleA;
                        boxheight = 150;
                        boxwidth = 150;
                      });
                    }),
                buildButton(
                  text: 'B',
                  color: Colors.pink,
                  onClicked: () => setState(() {
                    isVisibleB = !isVisibleB;
                  }),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Visibility(
              visible: isVisibleA,
              child: Wrap(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  aniContainer(text: 'Austronaut'),
                  sizedBox(),
                  aniContainer(text: 'Alligator'),
                  sizedBox(),
                  aniContainer(text: 'Avacado'),
                  sizedBox(),
                  aniContainer(text: 'Ambulance'),
                  sizedBox(),
                  aniContainer(text: 'Apple'),
                  sizedBox(),
                  aniContainer(text: 'Aeroplane'),
                  sizedBox(),
                ],
              ),
            ),
            Visibility(
                visible: isVisibleB,
                child: Wrap(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    aniContainer(
                      text: 'Bingo',
                    ),
                    aniContainer(text: 'Bouncing'),
                    sizedBox(),
                    aniContainer(text: 'Bat'),
                    sizedBox(),
                    aniContainer(text: 'Ball'),
                    sizedBox(),
                    aniContainer(text: 'Banana'),
                    sizedBox(),
                    aniContainer(text: 'Boil'),
                    sizedBox(),
                    aniContainer(text: 'Bake'),
                    sizedBox(),
                    aniContainer(text: 'Balloons'),
                    sizedBox(),
                    aniContainer(text: 'Butterfly'),
                    sizedBox(),
                    aniContainer(text: 'Basket'),
                    sizedBox(),
                    aniContainer(text: 'Barrell'),
                    sizedBox(),
                    aniContainer(text: 'Bamboo'),
                    sizedBox(),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                aniButton(text: 'C', onClicked: () {}),
                aniButton(text: 'D', onClicked: () {}),
              ],
            ),
          ],
        ),
      );

  Widget aniContainer({
    required String text,
  }) =>
      GestureDetector(
        onTap: _changeColor,
        child: Card(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            color: ((clickedColor == false)
                ? Colors.deepPurpleAccent
                : Colors.green),
            child: Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
        ),
      );

  Widget aniButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      RaisedButton(
        color: Colors.pink,
        child: GestureDetector(
          onTap: _expandBox,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: ((clickedSize == true) ? 30 : 70),
            width: ((clickedSize == true) ? 70 : 30),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
        onPressed: onClicked,
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(vertical: 16),
      );
}
