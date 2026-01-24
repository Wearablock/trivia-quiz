// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Quiz Trivia Globale';

  @override
  String get home => 'Home';

  @override
  String get stats => 'Statistiche';

  @override
  String get review => 'Revisione';

  @override
  String get settings => 'Impostazioni';

  @override
  String get quickQuiz => 'Quiz Veloce';

  @override
  String get quickQuizDescription => '10 domande casuali da tutte le categorie';

  @override
  String get categories => 'Categorie';

  @override
  String get yourStats => 'Le tue statistiche';

  @override
  String get answered => 'Risposte';

  @override
  String get correct => 'Corrette';

  @override
  String get questions => 'domande';

  @override
  String question(int current, int total) {
    return 'Domanda $current di $total';
  }

  @override
  String get correctAnswer => 'Corretto!';

  @override
  String get wrongAnswer => 'Sbagliato!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'La risposta corretta è: $answer';
  }

  @override
  String get next => 'Avanti';

  @override
  String get finish => 'Fine';

  @override
  String get quizComplete => 'Quiz completato!';

  @override
  String get yourScore => 'Il tuo punteggio';

  @override
  String outOf(int correct, int total) {
    return '$correct su $total';
  }

  @override
  String get playAgain => 'Gioca ancora';

  @override
  String get backToHome => 'Torna alla home';

  @override
  String get wrongAnswers => 'Risposte sbagliate';

  @override
  String get noWrongAnswers => 'Ancora nessuna risposta sbagliata!';

  @override
  String get reviewAll => 'Rivedi tutto';

  @override
  String get start => 'Inizia';

  @override
  String wrongCount(int count) {
    return '$count sbagliata/e';
  }

  @override
  String get recentWrong => 'Errori recenti';

  @override
  String get yourAnswer => 'La tua risposta';

  @override
  String get correctAnswerLabel => 'Risposta corretta';

  @override
  String hoursAgo(int hours) {
    return '$hours ore fa';
  }

  @override
  String get categoryGeography => 'Geografia';

  @override
  String get categoryHistory => 'Storia';

  @override
  String get categoryScience => 'Scienze';

  @override
  String get categoryArts => 'Arte e Cultura';

  @override
  String get categorySports => 'Sport';

  @override
  String get categoryNature => 'Natura';

  @override
  String get categoryTechnology => 'Tecnologia';

  @override
  String get categoryFood => 'Cibo e Lifestyle';
}
