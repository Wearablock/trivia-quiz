// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مسابقة المعلومات العامة';

  @override
  String get home => 'الرئيسية';

  @override
  String get stats => 'الإحصائيات';

  @override
  String get review => 'المراجعة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get quickQuiz => 'اختبار سريع';

  @override
  String get quickQuizDescription => '10 أسئلة عشوائية من جميع الفئات';

  @override
  String get categories => 'الفئات';

  @override
  String get yourStats => 'إحصائياتك';

  @override
  String get answered => 'تمت الإجابة';

  @override
  String get correct => 'صحيح';

  @override
  String get questions => 'أسئلة';

  @override
  String question(int current, int total) {
    return 'السؤال $current من $total';
  }

  @override
  String get correctAnswer => 'صحيح!';

  @override
  String get wrongAnswer => 'خطأ!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'الإجابة الصحيحة هي: $answer';
  }

  @override
  String get next => 'التالي';

  @override
  String get finish => 'إنهاء';

  @override
  String get quizComplete => 'اكتمل الاختبار!';

  @override
  String get yourScore => 'نتيجتك';

  @override
  String outOf(int correct, int total) {
    return '$correct من $total';
  }

  @override
  String get playAgain => 'العب مرة أخرى';

  @override
  String get backToHome => 'العودة للرئيسية';

  @override
  String get wrongAnswers => 'الإجابات الخاطئة';

  @override
  String get noWrongAnswers => 'لا توجد إجابات خاطئة بعد!';

  @override
  String get reviewAll => 'مراجعة الكل';

  @override
  String get start => 'ابدأ';

  @override
  String wrongCount(int count) {
    return '$count خطأ';
  }

  @override
  String get recentWrong => 'الأخطاء الأخيرة';

  @override
  String get yourAnswer => 'إجابتك';

  @override
  String get correctAnswerLabel => 'الإجابة الصحيحة';

  @override
  String hoursAgo(int hours) {
    return 'منذ $hours ساعات';
  }

  @override
  String get categoryGeography => 'الجغرافيا';

  @override
  String get categoryHistory => 'التاريخ';

  @override
  String get categoryScience => 'العلوم';

  @override
  String get categoryArts => 'الفنون والثقافة';

  @override
  String get categorySports => 'الرياضة';

  @override
  String get categoryNature => 'الطبيعة';

  @override
  String get categoryTechnology => 'التكنولوجيا';

  @override
  String get categoryFood => 'الطعام ونمط الحياة';
}
