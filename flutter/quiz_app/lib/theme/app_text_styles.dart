import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle appBarTitle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle heading = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle subheading = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle question = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle option = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}