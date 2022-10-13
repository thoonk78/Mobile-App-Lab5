// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

///Role is what element is what like answer the clue or the year
class Role {
  String answer;
  String clue;
  // ignore: prefer_typing_uninitialized_variables
  var year;
  Role({required this.answer, required this.clue, this.year});
}

class CluansWidget extends StatefulWidget {
  const CluansWidget({Key? key}) : super(key: key);

  @override
  State<CluansWidget> createState() => _CluansWidget();
}

class _CluansWidget extends State<CluansWidget> {
  List<Role> roles = [
    Role(answer: 'Berlin', clue: 'Captal of Germany', year: "10/7/2022"),
    Role(answer: 'Sky', clue: 'What is above you', year: "10/7/2022"),
    Role(answer: 'Fish', clue: 'What lives in water', year: "10/7/2022"),
    Role(answer: 'Luna', clue: 'Name of the moon', year: "10/7/2022"),
    Role(answer: 'Red', clue: 'Color of Blood', year: "10/7/2022"),
    Role(answer: 'Sofia', clue: 'Capital of Bulgaria', year: "10/7/2022"),
  ];

  ///sort by answer
  void _sortAnswers() {
    setState(() {
      roles.sort((a, b) => a.answer.compareTo(b.answer));
    });
  }

  ///sort by clues
  void _sortClues() {
    setState(() {
      roles.sort((a, b) => a.clue.compareTo(b.clue));
    });
  }

  ///builder
  @override
  Widget build(BuildContext context) {
    ///column for all the elements like the list and the elevated buttons
    return Column(children: [
      Expanded(

          ///listView
          child: ListView.separated(
        itemCount: roles.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(

              ///setting the title subtitle and trailing
              title: Text(roles[index].answer),
              subtitle: Text(roles[index].clue),
              trailing: Text(roles[index].year!));
        },

        ///for the divider between each element
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.blue,
            thickness: 1,
          );
        },
      )),

      ///Row for the elevated buttons
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ///padding to prevent the buttons from being stuck to the bottom of the screen
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: _sortClues,
              child: Text('Sort by Clue')),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: _sortAnswers,
              child: Text('Sort by Answer')),
        ),
      ])
    ]);
  }
}
