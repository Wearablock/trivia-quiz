// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '全球知识问答';

  @override
  String get home => '首页';

  @override
  String get stats => '统计';

  @override
  String get review => '复习';

  @override
  String get settings => '设置';

  @override
  String get quickQuiz => '快速问答';

  @override
  String get quickQuizDescription => '所有类别随机10题';

  @override
  String get categories => '类别';

  @override
  String get yourStats => '你的统计';

  @override
  String get answered => '已答题';

  @override
  String get correct => '正确率';

  @override
  String get questions => '题目';

  @override
  String question(int current, int total) {
    return '第$current题，共$total题';
  }

  @override
  String get correctAnswer => '正确！';

  @override
  String get wrongAnswer => '错误！';

  @override
  String theCorrectAnswerIs(String answer) {
    return '正确答案: $answer';
  }

  @override
  String get next => '下一题';

  @override
  String get finish => '完成';

  @override
  String get quizComplete => '问答完成！';

  @override
  String get yourScore => '得分';

  @override
  String outOf(int correct, int total) {
    return '$total题中答对$correct题';
  }

  @override
  String get playAgain => '再玩一次';

  @override
  String get backToHome => '返回首页';

  @override
  String get wrongAnswers => '错题';

  @override
  String get noWrongAnswers => '还没有错题！';

  @override
  String get reviewAll => '全部复习';

  @override
  String get start => '开始';

  @override
  String wrongCount(int count) {
    return '$count题错误';
  }

  @override
  String get recentWrong => '最近错题';

  @override
  String get yourAnswer => '你的答案';

  @override
  String get correctAnswerLabel => '正确答案';

  @override
  String hoursAgo(int hours) {
    return '$hours小时前';
  }

  @override
  String get categoryGeography => '地理';

  @override
  String get categoryHistory => '历史';

  @override
  String get categoryScience => '科学';

  @override
  String get categoryArts => '艺术文化';

  @override
  String get categorySports => '体育';

  @override
  String get categoryNature => '自然';

  @override
  String get categoryTechnology => '技术';

  @override
  String get categoryFood => '美食生活';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '全球知識問答';

  @override
  String get home => '首頁';

  @override
  String get stats => '統計';

  @override
  String get review => '複習';

  @override
  String get settings => '設定';

  @override
  String get quickQuiz => '快速問答';

  @override
  String get quickQuizDescription => '所有類別隨機10題';

  @override
  String get categories => '類別';

  @override
  String get yourStats => '你的統計';

  @override
  String get answered => '已答題';

  @override
  String get correct => '正確率';

  @override
  String get questions => '題目';

  @override
  String question(int current, int total) {
    return '第$current題，共$total題';
  }

  @override
  String get correctAnswer => '正確！';

  @override
  String get wrongAnswer => '錯誤！';

  @override
  String theCorrectAnswerIs(String answer) {
    return '正確答案: $answer';
  }

  @override
  String get next => '下一題';

  @override
  String get finish => '完成';

  @override
  String get quizComplete => '問答完成！';

  @override
  String get yourScore => '得分';

  @override
  String outOf(int correct, int total) {
    return '$total題中答對$correct題';
  }

  @override
  String get playAgain => '再玩一次';

  @override
  String get backToHome => '返回首頁';

  @override
  String get wrongAnswers => '錯題';

  @override
  String get noWrongAnswers => '還沒有錯題！';

  @override
  String get reviewAll => '全部複習';

  @override
  String get start => '開始';

  @override
  String wrongCount(int count) {
    return '$count題錯誤';
  }

  @override
  String get recentWrong => '最近錯題';

  @override
  String get yourAnswer => '你的答案';

  @override
  String get correctAnswerLabel => '正確答案';

  @override
  String hoursAgo(int hours) {
    return '$hours小時前';
  }

  @override
  String get categoryGeography => '地理';

  @override
  String get categoryHistory => '歷史';

  @override
  String get categoryScience => '科學';

  @override
  String get categoryArts => '藝術文化';

  @override
  String get categorySports => '體育';

  @override
  String get categoryNature => '自然';

  @override
  String get categoryTechnology => '技術';

  @override
  String get categoryFood => '美食生活';
}
