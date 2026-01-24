// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Глобальная Викторина';

  @override
  String get home => 'Главная';

  @override
  String get stats => 'Статистика';

  @override
  String get review => 'Повтор';

  @override
  String get settings => 'Настройки';

  @override
  String get quickQuiz => 'Быстрая викторина';

  @override
  String get quickQuizDescription => '10 случайных вопросов из всех категорий';

  @override
  String get categories => 'Категории';

  @override
  String get yourStats => 'Ваша статистика';

  @override
  String get answered => 'Отвечено';

  @override
  String get correct => 'Правильно';

  @override
  String get questions => 'вопросов';

  @override
  String question(int current, int total) {
    return 'Вопрос $current из $total';
  }

  @override
  String get correctAnswer => 'Правильно!';

  @override
  String get wrongAnswer => 'Неправильно!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'Правильный ответ: $answer';
  }

  @override
  String get next => 'Далее';

  @override
  String get finish => 'Завершить';

  @override
  String get quizComplete => 'Викторина завершена!';

  @override
  String get yourScore => 'Ваш результат';

  @override
  String outOf(int correct, int total) {
    return '$correct из $total';
  }

  @override
  String get playAgain => 'Играть снова';

  @override
  String get backToHome => 'На главную';

  @override
  String get wrongAnswers => 'Неправильные ответы';

  @override
  String get noWrongAnswers => 'Пока нет неправильных ответов!';

  @override
  String get reviewAll => 'Повторить все';

  @override
  String get start => 'Начать';

  @override
  String wrongCount(int count) {
    return '$count неправильно';
  }

  @override
  String get recentWrong => 'Недавние ошибки';

  @override
  String get yourAnswer => 'Ваш ответ';

  @override
  String get correctAnswerLabel => 'Правильный ответ';

  @override
  String hoursAgo(int hours) {
    return '$hours часов назад';
  }

  @override
  String get categoryGeography => 'География';

  @override
  String get categoryHistory => 'История';

  @override
  String get categoryScience => 'Наука';

  @override
  String get categoryArts => 'Искусство и культура';

  @override
  String get categorySports => 'Спорт';

  @override
  String get categoryNature => 'Природа';

  @override
  String get categoryTechnology => 'Технологии';

  @override
  String get categoryFood => 'Еда и образ жизни';
}
