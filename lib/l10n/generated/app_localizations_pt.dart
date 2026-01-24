// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Quiz de Trivia Global';

  @override
  String get home => 'Início';

  @override
  String get stats => 'Estatísticas';

  @override
  String get review => 'Revisão';

  @override
  String get settings => 'Configurações';

  @override
  String get quickQuiz => 'Quiz Rápido';

  @override
  String get quickQuizDescription =>
      '10 perguntas aleatórias de todas as categorias';

  @override
  String get categories => 'Categorias';

  @override
  String get yourStats => 'Suas estatísticas';

  @override
  String get answered => 'Respondidas';

  @override
  String get correct => 'Corretas';

  @override
  String get questions => 'perguntas';

  @override
  String question(int current, int total) {
    return 'Pergunta $current de $total';
  }

  @override
  String get correctAnswer => 'Correto!';

  @override
  String get wrongAnswer => 'Incorreto!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'A resposta correta é: $answer';
  }

  @override
  String get next => 'Próximo';

  @override
  String get finish => 'Finalizar';

  @override
  String get quizComplete => 'Quiz concluído!';

  @override
  String get yourScore => 'Sua pontuação';

  @override
  String outOf(int correct, int total) {
    return '$correct de $total';
  }

  @override
  String get playAgain => 'Jogar novamente';

  @override
  String get backToHome => 'Voltar ao início';

  @override
  String get wrongAnswers => 'Respostas erradas';

  @override
  String get noWrongAnswers => 'Ainda não há respostas erradas!';

  @override
  String get reviewAll => 'Revisar tudo';

  @override
  String get start => 'Começar';

  @override
  String wrongCount(int count) {
    return '$count errada(s)';
  }

  @override
  String get recentWrong => 'Erros recentes';

  @override
  String get yourAnswer => 'Sua resposta';

  @override
  String get correctAnswerLabel => 'Resposta correta';

  @override
  String hoursAgo(int hours) {
    return 'há $hours horas';
  }

  @override
  String get categoryGeography => 'Geografia';

  @override
  String get categoryHistory => 'História';

  @override
  String get categoryScience => 'Ciências';

  @override
  String get categoryArts => 'Arte e Cultura';

  @override
  String get categorySports => 'Esportes';

  @override
  String get categoryNature => 'Natureza';

  @override
  String get categoryTechnology => 'Tecnologia';

  @override
  String get categoryFood => 'Gastronomia e Estilo de Vida';
}
