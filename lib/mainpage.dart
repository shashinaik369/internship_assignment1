// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internship_assignment/widgets.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final key = GlobalKey<ScaffoldState>();

  bool isVisibleA = false;
  bool isVisibleB = false;

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
                  subButton(text: 'Austronaut'),
                  sizedBox(),
                  subButton(text: 'Alligator'),
                  sizedBox(),
                  subButton(text: 'Avacado'),
                  sizedBox(),
                  subButton(text: 'Ambulance'),
                  sizedBox(),
                  subButton(text: 'Apple'),
                  sizedBox(),
                  subButton(text: 'Aeroplane'),
                  sizedBox(),
                ],
              ),
            ),
            Visibility(
                visible: isVisibleB,
                child: Wrap(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    subButton(text: 'Bouncing'),
                    sizedBox(),
                    subButton(text: 'Bat'),
                    sizedBox(),
                    subButton(text: 'Ball'),
                    sizedBox(),
                    subButton(text: 'Banana'),
                    sizedBox(),
                    subButton(text: 'Boil'),
                    sizedBox(),
                    subButton(text: 'Bake'),
                    sizedBox(),
                    subButton(text: 'Balloons'),
                    sizedBox(),
                    subButton(text: 'Butterfly'),
                    sizedBox(),
                    subButton(text: 'Basket'),
                    sizedBox(),
                    subButton(text: 'Barrell'),
                    sizedBox(),
                    subButton(text: 'Bamboo'),
                    sizedBox(),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(
                  text: 'C',
                  color: Colors.pink,
                  onClicked: () => setState(() => {}),
                ),
                buildButton(
                  text: 'D',
                  color: Colors.pink,
                  onClicked: () => setState(() => {}),
                ),
              ],
            ),
          ],
        ),
      );
}
