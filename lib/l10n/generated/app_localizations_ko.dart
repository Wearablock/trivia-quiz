// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '글로벌 상식 퀴즈';

  @override
  String get home => '홈';

  @override
  String get stats => '통계';

  @override
  String get review => '오답';

  @override
  String get settings => '설정';

  @override
  String get quickQuiz => '빠른 퀴즈';

  @override
  String get quickQuizDescription => '모든 카테고리에서 랜덤 10문제';

  @override
  String get categories => '카테고리';

  @override
  String get yourStats => '내 통계';

  @override
  String get answered => '푼 문제';

  @override
  String get correct => '정답률';

  @override
  String get questions => '문제';

  @override
  String question(int current, int total) {
    return '$total문제 중 $current번';
  }

  @override
  String get correctAnswer => '정답입니다!';

  @override
  String get wrongAnswer => '틀렸습니다!';

  @override
  String theCorrectAnswerIs(String answer) {
    return '정답: $answer';
  }

  @override
  String get next => '다음';

  @override
  String get finish => '완료';

  @override
  String get quizComplete => '퀴즈 완료!';

  @override
  String get yourScore => '점수';

  @override
  String outOf(int correct, int total) {
    return '$total문제 중 $correct개 정답';
  }

  @override
  String get playAgain => '다시 풀기';

  @override
  String get backToHome => '홈으로';

  @override
  String get wrongAnswers => '틀린 문제';

  @override
  String get noWrongAnswers => '틀린 문제가 없습니다!';

  @override
  String get reviewAll => '전체 복습';

  @override
  String get start => '시작';

  @override
  String wrongCount(int count) {
    return '$count개 오답';
  }

  @override
  String get recentWrong => '최근 오답';

  @override
  String get yourAnswer => '내 답';

  @override
  String get correctAnswerLabel => '정답';

  @override
  String hoursAgo(int hours) {
    return '$hours시간 전';
  }

  @override
  String get categoryGeography => '지리';

  @override
  String get categoryHistory => '역사';

  @override
  String get categoryScience => '과학';

  @override
  String get categoryArts => '예술/문화';

  @override
  String get categorySports => '스포츠';

  @override
  String get categoryNature => '자연';

  @override
  String get categoryTechnology => '기술/발명';

  @override
  String get categoryFood => '음식/생활';
}
