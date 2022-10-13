import 'package:flutter/material.dart';

import 'Clues.dart';

/*
Name: Michael Meisenburg
Date: 10/8/2022
Description:app that makes a listview of answers and clues that orders them based on answer and clues
Bugs: none that I found
Reflection: This lab went well I think.
*/
void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(title: 'Cluans', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Cluans'))),
      body: const CluansWidget(),
    );
  }
}
