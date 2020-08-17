import 'package:quizzler/question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(text: 'Some cats are actually allergic to humans', answer: true),
    Question(text: 'You can lead a cow down stairs but not up stairs.', answer: false),
    Question(text: 'Approximately one quarter of human bones are in the feet.', answer: true),
    Question(text: 'A slug\'s blood is green.', answer: true),
    Question(text: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', answer: true),
    Question(text: 'It is illegal to pee in the Ocean in Portugal.', answer: true),
    Question(text: 'No piece of square dry paper can be folded in half more than 7 times.', answer: false),
    Question(text:
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Question(text: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', answer: false),
    Question(text: 'The total surface area of two human lungs is approximately 70 square metres.', answer: true),
    Question(text: 'Google was originally called \"Backrub\".', answer: true),
    Question(text: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', answer: true),
    Question(text:
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answer: true),
  ];

  int _questionIndex = 0;
  bool _questionCompleted = false;

  void nextQuestion() {
    if (_questionIndex < _questionBank.length - 1) {
      _questionIndex++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionIndex].text;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionIndex].answer;
  }

  int getLengthQuestions() {
    return _questionBank.length;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    _questionCompleted = (_questionBank.length - 1 == _questionIndex);
    //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
    print('_questionCompleted: $_questionCompleted');
    return _questionCompleted;
  }

  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionIndex = 0;
  }
}
