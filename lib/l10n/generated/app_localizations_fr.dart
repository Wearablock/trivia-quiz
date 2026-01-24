// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Quiz Culture Générale';

  @override
  String get home => 'Accueil';

  @override
  String get stats => 'Statistiques';

  @override
  String get review => 'Révision';

  @override
  String get settings => 'Paramètres';

  @override
  String get quickQuiz => 'Quiz Rapide';

  @override
  String get quickQuizDescription =>
      '10 questions aléatoires de toutes catégories';

  @override
  String get categories => 'Catégories';

  @override
  String get yourStats => 'Vos statistiques';

  @override
  String get answered => 'Répondu';

  @override
  String get correct => 'Correct';

  @override
  String get questions => 'questions';

  @override
  String question(int current, int total) {
    return 'Question $current sur $total';
  }

  @override
  String get correctAnswer => 'Correct!';

  @override
  String get wrongAnswer => 'Incorrect!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'La bonne réponse est: $answer';
  }

  @override
  String get next => 'Suivant';

  @override
  String get finish => 'Terminer';

  @override
  String get quizComplete => 'Quiz terminé!';

  @override
  String get yourScore => 'Votre score';

  @override
  String outOf(int correct, int total) {
    return '$correct sur $total';
  }

  @override
  String get playAgain => 'Rejouer';

  @override
  String get backToHome => 'Retour à l\'accueil';

  @override
  String get wrongAnswers => 'Mauvaises réponses';

  @override
  String get noWrongAnswers => 'Pas encore de mauvaises réponses!';

  @override
  String get reviewAll => 'Tout réviser';

  @override
  String get start => 'Commencer';

  @override
  String wrongCount(int count) {
    return '$count erreur(s)';
  }

  @override
  String get recentWrong => 'Erreurs récentes';

  @override
  String get yourAnswer => 'Votre réponse';

  @override
  String get correctAnswerLabel => 'Bonne réponse';

  @override
  String hoursAgo(int hours) {
    return 'il y a $hours heures';
  }

  @override
  String get categoryGeography => 'Géographie';

  @override
  String get categoryHistory => 'Histoire';

  @override
  String get categoryScience => 'Sciences';

  @override
  String get categoryArts => 'Arts & Culture';

  @override
  String get categorySports => 'Sports';

  @override
  String get categoryNature => 'Nature';

  @override
  String get categoryTechnology => 'Technologie';

  @override
  String get categoryFood => 'Gastronomie & Lifestyle';
}
