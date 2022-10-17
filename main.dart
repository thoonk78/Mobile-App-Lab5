import 'package:flutter/material.dart';
import 'AddCluansWidget.dart';
import 'Clues.dart';
import 'package:provider/provider.dart';

import 'cluanRole.dart';

/*
Name: Michael Meisenburg
Date: 10/8/2022
Description:app that makes a listview of answers and clues that orders them based on answer and clues
Bugs: none that I found
Reflection: This lab went well I think.
*/
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: const MaterialApp(title: 'My App', home: MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> tabViews = [CluansWidget(), AddCluanWidget()];
  int selectedIndex = 0;
  void _handleTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            showUnselectedLabels: true,
            onTap: _handleTap,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(label: 'list', icon: Icon(Icons.search)),
              BottomNavigationBarItem(label: 'add', icon: Icon(Icons.list))
            ],
          ),
          appBar: AppBar(title: const Center(child: Text('Cluans'))),
          body: tabViews[selectedIndex],
        ));
  }
}
