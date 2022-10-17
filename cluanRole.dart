import 'package:flutter/cupertino.dart';
import 'classRole.dart';

class MyModel extends ChangeNotifier {
  // ignore: unused_field
  List<Role> roles = [
    Role(answer: 'Berlin', clue: 'Captal of Germany', year: "10/7/2022"),
    Role(answer: 'Sky', clue: 'What is above you', year: "10/7/2022"),
    Role(answer: 'Fish', clue: 'What lives in water', year: "10/7/2022"),
    Role(answer: 'Luna', clue: 'Name of the moon', year: "10/7/2022"),
    Role(answer: 'Red', clue: 'Color of Blood', year: "10/7/2022"),
    Role(answer: 'Sofia', clue: 'Capital of Bulgaria', year: "10/7/2022"),
  ];

  Role getCluan({required int at}) {
    return roles[at];
  }

  bool Add({required MyModel cluan}) {
    if (cluan != null) {
      return true;
    }
    return false;
  }

  int numCluans() {
    return roles.length;
  }

  //sort by answer
  void sortAnswers() {
    roles.sort((a, b) => a.answer.compareTo(b.answer));
  }

  ///sort by clues
  void sortClues() {
    roles.sort((a, b) => a.clue.compareTo(b.clue));
  }
}
