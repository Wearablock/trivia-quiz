// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Kuis Trivia Global';

  @override
  String get home => 'Beranda';

  @override
  String get stats => 'Statistik';

  @override
  String get review => 'Ulasan';

  @override
  String get settings => 'Pengaturan';

  @override
  String get quickQuiz => 'Kuis Cepat';

  @override
  String get quickQuizDescription => '10 pertanyaan acak dari semua kategori';

  @override
  String get categories => 'Kategori';

  @override
  String get yourStats => 'Statistik Anda';

  @override
  String get answered => 'Dijawab';

  @override
  String get correct => 'Benar';

  @override
  String get questions => 'pertanyaan';

  @override
  String question(int current, int total) {
    return 'Pertanyaan $current dari $total';
  }

  @override
  String get correctAnswer => 'Benar!';

  @override
  String get wrongAnswer => 'Salah!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'Jawaban yang benar adalah: $answer';
  }

  @override
  String get next => 'Lanjut';

  @override
  String get finish => 'Selesai';

  @override
  String get quizComplete => 'Kuis Selesai!';

  @override
  String get yourScore => 'Skor Anda';

  @override
  String outOf(int correct, int total) {
    return '$correct dari $total';
  }

  @override
  String get playAgain => 'Main Lagi';

  @override
  String get backToHome => 'Kembali ke Beranda';

  @override
  String get wrongAnswers => 'Jawaban Salah';

  @override
  String get noWrongAnswers => 'Belum ada jawaban salah!';

  @override
  String get reviewAll => 'Ulang Semua';

  @override
  String get start => 'Mulai';

  @override
  String wrongCount(int count) {
    return '$count salah';
  }

  @override
  String get recentWrong => 'Kesalahan Terbaru';

  @override
  String get yourAnswer => 'Jawaban Anda';

  @override
  String get correctAnswerLabel => 'Jawaban yang benar';

  @override
  String hoursAgo(int hours) {
    return '$hours jam yang lalu';
  }

  @override
  String get categoryGeography => 'Geografi';

  @override
  String get categoryHistory => 'Sejarah';

  @override
  String get categoryScience => 'Sains';

  @override
  String get categoryArts => 'Seni & Budaya';

  @override
  String get categorySports => 'Olahraga';

  @override
  String get categoryNature => 'Alam';

  @override
  String get categoryTechnology => 'Teknologi';

  @override
  String get categoryFood => 'Makanan & Gaya Hidup';
}
