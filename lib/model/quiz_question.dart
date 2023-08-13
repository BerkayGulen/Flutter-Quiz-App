class QuizQuestion{
  final String text;
  final List<String> answers;

  QuizQuestion(this.text,this.answers);

  List<String> getShuffledAnswers(){
    final List<String> dummyList = List.of(answers);
     dummyList.shuffle();
     return dummyList;
  }
}