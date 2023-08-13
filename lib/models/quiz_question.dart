class QuizQuestion{
  final String question;
  final List<String> answers;
  const QuizQuestion(this.question,this.answers);

  List<String> getShuffledAnswers(){
    final List<String> tempAnswers = List.of(answers);
    tempAnswers.shuffle();
    return tempAnswers;
  }

}