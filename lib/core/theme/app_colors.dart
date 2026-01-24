import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xFF6200EE);
  static const Color primaryVariant = Color(0xFF3700B3);
  static const Color secondary = Color(0xFF03DAC6);

  // Category colors
  static const Color geography = Color(0xFF2E7D32);
  static const Color history = Color(0xFF8B4513);
  static const Color science = Color(0xFF1565C0);
  static const Color arts = Color(0xFF7B1FA2);
  static const Color sports = Color(0xFFC62828);
  static const Color nature = Color(0xFF388E3C);
  static const Color technology = Color(0xFF0277BD);
  static const Color food = Color(0xFFEF6C00);

  // Quiz feedback colors
  static const Color correct = Color(0xFF4CAF50);
  static const Color wrong = Color(0xFFF44336);

  // Get color by category ID
  static Color getCategoryColor(String categoryId) {
    switch (categoryId) {
      case 'geography':
        return geography;
      case 'history':
        return history;
      case 'science':
        return science;
      case 'arts':
        return arts;
      case 'sports':
        return sports;
      case 'nature':
        return nature;
      case 'technology':
        return technology;
      case 'food':
        return food;
      default:
        return primary;
    }
  }
}
