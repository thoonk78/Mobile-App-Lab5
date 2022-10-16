// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddCluanWidget extends StatefulWidget {
  const AddCluanWidget({Key? key}) : super(key: key);

  @override
  State<AddCluanWidget> createState() => _AddCluanWidget();
}

class _AddCluanWidget extends State<AddCluanWidget> {
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
            decoration: InputDecoration(hintText: 'Answer')),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            onChanged: null,
            style: preferredTextStyle,
            decoration: InputDecoration(hintText: 'Clue')),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            onChanged: null,
            style: preferredTextStyle,
            decoration: InputDecoration(hintText: 'Date')),
      ),

      ///Row for the elevated buttons
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ///padding to prevent the buttons from being stuck to the bottom of the screen
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: null,
              child: Text('Sort by Clue')),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: null,
              child: Text('Sort by Answer')),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: null,
              child: Text('Sort by Answer')),
        ),
      ])
    ]));
  }
}
