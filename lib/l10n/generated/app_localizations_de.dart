// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Globales Wissensquiz';

  @override
  String get home => 'Startseite';

  @override
  String get stats => 'Statistik';

  @override
  String get review => 'Überprüfung';

  @override
  String get settings => 'Einstellungen';

  @override
  String get quickQuiz => 'Schnelles Quiz';

  @override
  String get quickQuizDescription => '10 zufällige Fragen aus allen Kategorien';

  @override
  String get categories => 'Kategorien';

  @override
  String get yourStats => 'Deine Statistik';

  @override
  String get answered => 'Beantwortet';

  @override
  String get correct => 'Richtig';

  @override
  String get questions => 'Fragen';

  @override
  String question(int current, int total) {
    return 'Frage $current von $total';
  }

  @override
  String get correctAnswer => 'Richtig!';

  @override
  String get wrongAnswer => 'Falsch!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'Die richtige Antwort ist: $answer';
  }

  @override
  String get next => 'Weiter';

  @override
  String get finish => 'Beenden';

  @override
  String get quizComplete => 'Quiz abgeschlossen!';

  @override
  String get yourScore => 'Dein Ergebnis';

  @override
  String outOf(int correct, int total) {
    return '$correct von $total';
  }

  @override
  String get playAgain => 'Nochmal spielen';

  @override
  String get backToHome => 'Zurück zur Startseite';

  @override
  String get wrongAnswers => 'Falsche Antworten';

  @override
  String get noWrongAnswers => 'Noch keine falschen Antworten!';

  @override
  String get reviewAll => 'Alle überprüfen';

  @override
  String get start => 'Start';

  @override
  String wrongCount(int count) {
    return '$count falsch';
  }

  @override
  String get recentWrong => 'Kürzlich falsch';

  @override
  String get yourAnswer => 'Deine Antwort';

  @override
  String get correctAnswerLabel => 'Richtige Antwort';

  @override
  String hoursAgo(int hours) {
    return 'vor $hours Stunden';
  }

  @override
  String get categoryGeography => 'Geographie';

  @override
  String get categoryHistory => 'Geschichte';

  @override
  String get categoryScience => 'Wissenschaft';

  @override
  String get categoryArts => 'Kunst & Kultur';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryNature => 'Natur';

  @override
  String get categoryTechnology => 'Technologie';

  @override
  String get categoryFood => 'Essen & Lifestyle';
}
