// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'グローバルトリビアクイズ';

  @override
  String get home => 'ホーム';

  @override
  String get stats => '統計';

  @override
  String get review => '復習';

  @override
  String get settings => '設定';

  @override
  String get quickQuiz => 'クイッククイズ';

  @override
  String get quickQuizDescription => '全カテゴリからランダム10問';

  @override
  String get categories => 'カテゴリ';

  @override
  String get yourStats => 'あなたの統計';

  @override
  String get answered => '回答数';

  @override
  String get correct => '正解率';

  @override
  String get questions => '問題';

  @override
  String question(int current, int total) {
    return '$total問中$current問目';
  }

  @override
  String get correctAnswer => '正解！';

  @override
  String get wrongAnswer => '不正解！';

  @override
  String theCorrectAnswerIs(String answer) {
    return '正解: $answer';
  }

  @override
  String get next => '次へ';

  @override
  String get finish => '完了';

  @override
  String get quizComplete => 'クイズ完了！';

  @override
  String get yourScore => 'スコア';

  @override
  String outOf(int correct, int total) {
    return '$total問中$correct問正解';
  }

  @override
  String get playAgain => 'もう一度';

  @override
  String get backToHome => 'ホームへ';

  @override
  String get wrongAnswers => '間違えた問題';

  @override
  String get noWrongAnswers => '間違えた問題はありません！';

  @override
  String get reviewAll => '全て復習';

  @override
  String get start => '開始';

  @override
  String wrongCount(int count) {
    return '$count問不正解';
  }

  @override
  String get recentWrong => '最近の不正解';

  @override
  String get yourAnswer => 'あなたの答え';

  @override
  String get correctAnswerLabel => '正解';

  @override
  String hoursAgo(int hours) {
    return '$hours時間前';
  }

  @override
  String get categoryGeography => '地理';

  @override
  String get categoryHistory => '歴史';

  @override
  String get categoryScience => '科学';

  @override
  String get categoryArts => '芸術・文化';

  @override
  String get categorySports => 'スポーツ';

  @override
  String get categoryNature => '自然';

  @override
  String get categoryTechnology => '技術';

  @override
  String get categoryFood => '食・生活';
}
