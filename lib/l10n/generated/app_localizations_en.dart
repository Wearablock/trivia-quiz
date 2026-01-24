// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Global Trivia Quiz';

  @override
  String get home => 'Home';

  @override
  String get stats => 'Stats';

  @override
  String get review => 'Review';

  @override
  String get settings => 'Settings';

  @override
  String get quickQuiz => 'Quick Quiz';

  @override
  String get quickQuizDescription => '10 random questions from all categories';

  @override
  String get categories => 'Categories';

  @override
  String get yourStats => 'Your Stats';

  @override
  String get answered => 'Answered';

  @override
  String get correct => 'Correct';

  @override
  String get questions => 'questions';

  @override
  String question(int current, int total) {
    return 'Question $current of $total';
  }

  @override
  String get correctAnswer => 'Correct!';

  @override
  String get wrongAnswer => 'Wrong!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'The correct answer is: $answer';
  }

  @override
  String get next => 'Next';

  @override
  String get finish => 'Finish';

  @override
  String get quizComplete => 'Quiz Complete!';

  @override
  String get yourScore => 'Your Score';

  @override
  String outOf(int correct, int total) {
    return '$correct out of $total';
  }

  @override
  String get playAgain => 'Play Again';

  @override
  String get backToHome => 'Back to Home';

  @override
  String get wrongAnswers => 'Wrong Answers';

  @override
  String get noWrongAnswers => 'No wrong answers yet!';

  @override
  String get reviewAll => 'Review All';

  @override
  String get start => 'Start';

  @override
  String wrongCount(int count) {
    return '$count wrong';
  }

  @override
  String get recentWrong => 'Recent Wrong';

  @override
  String get yourAnswer => 'Your answer';

  @override
  String get correctAnswerLabel => 'Correct answer';

  @override
  String hoursAgo(int hours) {
    return '$hours hours ago';
  }

  @override
  String get categoryGeography => 'Geography';

  @override
  String get categoryHistory => 'History';

  @override
  String get categoryScience => 'Science';

  @override
  String get categoryArts => 'Arts & Culture';

  @override
  String get categorySports => 'Sports';

  @override
  String get categoryNature => 'Nature';

  @override
  String get categoryTechnology => 'Technology';

  @override
  String get categoryFood => 'Food & Lifestyle';
}
