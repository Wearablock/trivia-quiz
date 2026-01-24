// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Đố Vui Kiến Thức';

  @override
  String get home => 'Trang chủ';

  @override
  String get stats => 'Thống kê';

  @override
  String get review => 'Ôn tập';

  @override
  String get settings => 'Cài đặt';

  @override
  String get quickQuiz => 'Đố nhanh';

  @override
  String get quickQuizDescription => '10 câu hỏi ngẫu nhiên từ tất cả danh mục';

  @override
  String get categories => 'Danh mục';

  @override
  String get yourStats => 'Thống kê của bạn';

  @override
  String get answered => 'Đã trả lời';

  @override
  String get correct => 'Đúng';

  @override
  String get questions => 'câu hỏi';

  @override
  String question(int current, int total) {
    return 'Câu $current trên $total';
  }

  @override
  String get correctAnswer => 'Chính xác!';

  @override
  String get wrongAnswer => 'Sai!';

  @override
  String theCorrectAnswerIs(String answer) {
    return 'Đáp án đúng là: $answer';
  }

  @override
  String get next => 'Tiếp';

  @override
  String get finish => 'Hoàn thành';

  @override
  String get quizComplete => 'Hoàn thành bài đố!';

  @override
  String get yourScore => 'Điểm của bạn';

  @override
  String outOf(int correct, int total) {
    return '$correct trên $total';
  }

  @override
  String get playAgain => 'Chơi lại';

  @override
  String get backToHome => 'Về trang chủ';

  @override
  String get wrongAnswers => 'Câu trả lời sai';

  @override
  String get noWrongAnswers => 'Chưa có câu trả lời sai!';

  @override
  String get reviewAll => 'Ôn tập tất cả';

  @override
  String get start => 'Bắt đầu';

  @override
  String wrongCount(int count) {
    return '$count sai';
  }

  @override
  String get recentWrong => 'Sai gần đây';

  @override
  String get yourAnswer => 'Câu trả lời của bạn';

  @override
  String get correctAnswerLabel => 'Đáp án đúng';

  @override
  String hoursAgo(int hours) {
    return '$hours giờ trước';
  }

  @override
  String get categoryGeography => 'Địa lý';

  @override
  String get categoryHistory => 'Lịch sử';

  @override
  String get categoryScience => 'Khoa học';

  @override
  String get categoryArts => 'Nghệ thuật & Văn hóa';

  @override
  String get categorySports => 'Thể thao';

  @override
  String get categoryNature => 'Thiên nhiên';

  @override
  String get categoryTechnology => 'Công nghệ';

  @override
  String get categoryFood => 'Ẩm thực & Phong cách sống';
}
