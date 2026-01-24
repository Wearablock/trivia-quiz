import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/generated/app_localizations.dart';
import 'core/theme/app_theme.dart';
import 'features/main/main_shell.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Firebase initialization (uncomment after firebase setup)
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(
    const ProviderScope(
      child: TriviaQuizApp(),
    ),
  );
}

class TriviaQuizApp extends StatelessWidget {
  const TriviaQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Trivia Quiz',
      debugShowCheckedModeBanner: false,

      // Theme
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      // Localization
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),           // English
        Locale('ko'),           // Korean
        Locale('ja'),           // Japanese
        Locale('zh'),           // Chinese (Simplified)
        Locale('zh', 'Hant'),   // Chinese (Traditional)
        Locale('de'),           // German
        Locale('fr'),           // French
        Locale('es'),           // Spanish
        Locale('pt'),           // Portuguese
        Locale('it'),           // Italian
        Locale('ru'),           // Russian
        Locale('ar'),           // Arabic
        Locale('th'),           // Thai
        Locale('vi'),           // Vietnamese
        Locale('id'),           // Indonesian
      ],

      home: const MainShell(),
    );
  }
}
