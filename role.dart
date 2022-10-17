class Role {
  String answer;
  String clue;
  // ignore: prefer_typing_uninitialized_variables
  var year;
  Role({required this.answer, required this.clue, this.year});
  String getAnswer() {
    return answer;
  }

  String getclue() {
    return clue;
  }

  String getDate() {
    return year;
  }
}
