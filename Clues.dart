// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'AddCluansWidget.dart';
import 'Clues.dart';
import 'package:provider/provider.dart';
import 'cluanRole.dart';

class CluansWidget extends StatelessWidget {
  //sort by answer

  ///builder
  @override
  Widget build(BuildContext context) {
    ///column for all the elements like the list and the elevated buttons
    return Column(children: [
      Expanded(

          ///listView
          child: ListView.separated(
        itemCount: Provider.of<MyModel>(context, listen: false).numCluans(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(

              ///setting the title subtitle and trailing
              title: Text(Provider.of<MyModel>(context, listen: false)
                  .getCluan(at: index)
                  .answer),
              subtitle: Text(Provider.of<MyModel>(context, listen: false)
                  .getCluan(at: index)
                  .clue),
              trailing: Text(Provider.of<MyModel>(context, listen: false)
                  .getCluan(at: index)
                  .year));
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
              onPressed: Provider.of<MyModel>(context).sortClues,
              child: Text('Sort by Clue')),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(1, 1, 1, 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: Provider.of<MyModel>(context).sortAnswers,
              child: Text('Sort by Answer')),
        ),
      ])
    ]);
  }
}
