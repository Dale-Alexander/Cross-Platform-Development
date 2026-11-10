class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //1. Create and copy the existing list
    final shuffledList = List.of(answers);
    //2. Shuffle the answer/order of answers
    shuffledList.shuffle();
    return shuffledList;
  }
}
