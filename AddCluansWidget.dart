// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddCluanWidget extends StatefulWidget {
  const AddCluanWidget({Key? key}) : super(key: key);

  @override
  State<AddCluanWidget> createState() => _AddCluanWidget();
}

class Role {
  String answer;
  String clue;
  // ignore: prefer_typing_uninitialized_variables
  var year;
  Role({required this.answer, required this.clue, this.year});
}

// ignore: unused_element
class Cluans {
  // ignore: unused_field
  final List<Role> _roles = [
    Role(answer: 'Berlin', clue: 'Captal of Germany', year: "10/7/2022"),
    Role(answer: 'Sky', clue: 'What is above you', year: "10/7/2022"),
    Role(answer: 'Fish', clue: 'What lives in water', year: "10/7/2022"),
    Role(answer: 'Luna', clue: 'Name of the moon', year: "10/7/2022"),
    Role(answer: 'Red', clue: 'Color of Blood', year: "10/7/2022"),
    Role(answer: 'Sofia', clue: 'Capital of Bulgaria', year: "10/7/2022"),
  ];

  Role? getCluan({required int at}) {
    Role? cluan = _roles[at];
    int i = at;
    // for (i; i < _roles.length; i++) {
    //   cluan = _roles[i];
    // }
    return cluan;
  }
}

class _AddCluanWidget extends State<AddCluanWidget> {
  void addCluan() {
    //
    var a;
    print('hello world');
    print(a.getCluan(0));
    //});
  }

  bool Add({required Cluans cluan}) {
    return false;
  }

  int numCluans() {
    return 0;
  }

  TextEditingController myController = TextEditingController();
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
          controller: myController,
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: null,
          style: preferredTextStyle,
          decoration: InputDecoration(hintText: 'Date'),
          controller: myController,
        ),
      ),

      ///Row for the elevated buttons
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ///padding to prevent the buttons from being stuck to the bottom of the screen
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: addCluan,
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
              onPressed: null,
              child: Text('Clear')),
        ),
      ])
    ]));
  }
}
