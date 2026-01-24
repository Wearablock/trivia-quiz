// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'ควิซความรู้รอบโลก';

  @override
  String get home => 'หน้าแรก';

  @override
  String get stats => 'สถิติ';

  @override
  String get review => 'ทบทวน';

  @override
  String get settings => 'ตั้งค่า';

  @override
  String get quickQuiz => 'ควิซด่วน';

  @override
  String get quickQuizDescription => '10 คำถามสุ่มจากทุกหมวด';

  @override
  String get categories => 'หมวดหมู่';

  @override
  String get yourStats => 'สถิติของคุณ';

  @override
  String get answered => 'ตอบแล้ว';

  @override
  String get correct => 'ถูกต้อง';

  @override
  String get questions => 'คำถาม';

  @override
  String question(int current, int total) {
    return 'คำถามที่ $current จาก $total';
  }

  @override
  String get correctAnswer => 'ถูกต้อง!';

  @override
  String get wrongAnswer => 'ผิด!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'คำตอบที่ถูกต้องคือ: $answer';
  }

  @override
  String get next => 'ถัดไป';

  @override
  String get finish => 'เสร็จสิ้น';

  @override
  String get quizComplete => 'ควิซเสร็จสมบูรณ์!';

  @override
  String get yourScore => 'คะแนนของคุณ';

  @override
  String outOf(int correct, int total) {
    return '$correct จาก $total';
  }

  @override
  String get playAgain => 'เล่นอีกครั้ง';

  @override
  String get backToHome => 'กลับหน้าแรก';

  @override
  String get wrongAnswers => 'คำตอบที่ผิด';

  @override
  String get noWrongAnswers => 'ยังไม่มีคำตอบที่ผิด!';

  @override
  String get reviewAll => 'ทบทวนทั้งหมด';

  @override
  String get start => 'เริ่ม';

  @override
  String wrongCount(int count) {
    return '$count ผิด';
  }

  @override
  String get recentWrong => 'ผิดล่าสุด';

  @override
  String get yourAnswer => 'คำตอบของคุณ';

  @override
  String get correctAnswerLabel => 'คำตอบที่ถูกต้อง';

  @override
  String hoursAgo(int hours) {
    return '$hours ชั่วโมงที่แล้ว';
  }

  @override
  String get categoryGeography => 'ภูมิศาสตร์';

  @override
  String get categoryHistory => 'ประวัติศาสตร์';

  @override
  String get categoryScience => 'วิทยาศาสตร์';

  @override
  String get categoryArts => 'ศิลปะและวัฒนธรรม';

  @override
  String get categorySports => 'กีฬา';

  @override
  String get categoryNature => 'ธรรมชาติ';

  @override
  String get categoryTechnology => 'เทคโนโลยี';

  @override
  String get categoryFood => 'อาหารและไลฟ์สไตล์';
}
