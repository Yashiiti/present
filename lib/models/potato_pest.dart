class Option {
  final String id;
  final String value;
  final bool isCorrect;

  const Option(
      {required this.id, required this.value, required this.isCorrect});
}

class Question {
  final String id;
  final String title;
  final List<Option> options;

  const Question(
      {required this.id, required this.title, required this.options});
}

class PotatoPest {
  final String id;
  final String image;
  final List<Question> questions;
  final String title;

  const PotatoPest(
      {required this.id,
      required this.image,
      required this.questions,
      required this.title});
}
