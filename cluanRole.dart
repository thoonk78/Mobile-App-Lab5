
import 'AddCluansWidget.dart';
import 'role.dart';

class Cluans {
  // ignore: unused_field
  final List<Role> roles = [
    Role(answer: 'Berlin', clue: 'Captal of Germany', year: "10/7/2022"),
    Role(answer: 'Sky', clue: 'What is above you', year: "10/7/2022"),
    Role(answer: 'Fish', clue: 'What lives in water', year: "10/7/2022"),
    Role(answer: 'Luna', clue: 'Name of the moon', year: "10/7/2022"),
    Role(answer: 'Red', clue: 'Color of Blood', year: "10/7/2022"),
    Role(answer: 'Sofia', clue: 'Capital of Bulgaria', year: "10/7/2022"),
  ];

  Role? getCluan({required int at}) {
    Role cluan = roles[at];
    int i = at;
    // for (i; i < _roles.length; i++) {
    //   cluan = _roles[i];
    // }
    return cluan;
  }

  bool Add({required Cluans cluan}) {
    if (cluan!= null) {
      return true;
    }
    return false;

  }
}