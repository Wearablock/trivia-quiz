// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Quiz de Trivia Global';

  @override
  String get home => 'Inicio';

  @override
  String get stats => 'Estadísticas';

  @override
  String get review => 'Revisión';

  @override
  String get settings => 'Configuración';

  @override
  String get quickQuiz => 'Quiz Rápido';

  @override
  String get quickQuizDescription =>
      '10 preguntas aleatorias de todas las categorías';

  @override
  String get categories => 'Categorías';

  @override
  String get yourStats => 'Tus estadísticas';

  @override
  String get answered => 'Respondidas';

  @override
  String get correct => 'Correctas';

  @override
  String get questions => 'preguntas';

  @override
  String question(int current, int total) {
    return 'Pregunta $current de $total';
  }

  @override
  String get correctAnswer => '¡Correcto!';

  @override
  String get wrongAnswer => '¡Incorrecto!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'La respuesta correcta es: $answer';
  }

  @override
  String get next => 'Siguiente';

  @override
  String get finish => 'Terminar';

  @override
  String get quizComplete => '¡Quiz completado!';

  @override
  String get yourScore => 'Tu puntuación';

  @override
  String outOf(int correct, int total) {
    return '$correct de $total';
  }

  @override
  String get playAgain => 'Jugar de nuevo';

  @override
  String get backToHome => 'Volver al inicio';

  @override
  String get wrongAnswers => 'Respuestas incorrectas';

  @override
  String get noWrongAnswers => '¡Aún no hay respuestas incorrectas!';

  @override
  String get reviewAll => 'Revisar todo';

  @override
  String get start => 'Comenzar';

  @override
  String wrongCount(int count) {
    return '$count incorrecta(s)';
  }

  @override
  String get recentWrong => 'Errores recientes';

  @override
  String get yourAnswer => 'Tu respuesta';

  @override
  String get correctAnswerLabel => 'Respuesta correcta';

  @override
  String hoursAgo(int hours) {
    return 'hace $hours horas';
  }

  @override
  String get categoryGeography => 'Geografía';

  @override
  String get categoryHistory => 'Historia';

  @override
  String get categoryScience => 'Ciencias';

  @override
  String get categoryArts => 'Arte y Cultura';

  @override
  String get categorySports => 'Deportes';

  @override
  String get categoryNature => 'Naturaleza';

  @override
  String get categoryTechnology => 'Tecnología';

  @override
  String get categoryFood => 'Gastronomía y Estilo de Vida';
}
