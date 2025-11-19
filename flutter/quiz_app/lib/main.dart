import 'package:flutter/material.dart';
import 'theme/app_colors.dart';
import 'theme/app_text_styles.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bg,
        primaryColor: AppColors.primary,
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primary,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
