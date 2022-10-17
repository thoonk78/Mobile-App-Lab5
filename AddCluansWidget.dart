// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab4/classRole.dart';
import 'package:provider/provider.dart';
import 'cluanRole.dart';

class AddCluanWidget extends StatelessWidget {
  TextEditingController myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  final TextStyle preferredTextStyle = TextStyle(fontSize: 24.0);

  ///builder
  @override
  Widget build(BuildContext context) {
    ///column for all the elements like the list and the elevated buttons
    return Scaffold(
        body: Column(children: [
      // Expanded(
      //     //put list view for textfields
      // ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: null,
          style: preferredTextStyle,
          decoration: InputDecoration(hintText: 'Answer'),
          controller: myController,
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: null,
          style: preferredTextStyle,
          decoration: InputDecoration(hintText: 'Clue'),
          controller: myController1,
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: null,
          style: preferredTextStyle,
          decoration: InputDecoration(hintText: 'Date'),
          controller: myController2,
        ),
      ),

      ///Row for the elevated buttons
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ///padding to prevent the buttons from being stuck to the bottom of the screen
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                if (myController.text != "" &&
                    myController1.text != "" &&
                    myController2.text != "") {
                  Provider.of<MyModel>(context, listen: false).Add(
                    cluan: Role(
                        answer: myController.text,
                        clue: myController1.text,
                        year: myController2.text),
                  );
                }
              },
              child: Text('Add')),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: null,
              child: Text('Test Add')),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: clear,
              child: Text('Clear')),
        ),
      ])
    ]));
  }

  void clear() {
    myController.clear();
    myController1.clear();
    myController2.clear();
  }
}
