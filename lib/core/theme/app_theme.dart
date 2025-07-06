import 'package:flutter/material.dart';

class AppTheme {
  // 主要色彩 - 基於設計圖的漸層色彩
  static const Color primaryBlue = Color(0xFF667eea);
  static const Color primaryPurple = Color(0xFF764ba2);
  static const Color mountainBlue = Color(0xFF2d5a87);
  
  // 功能色彩
  static const Color successGreen = Color(0xFF4CAF50);
  static const Color warningOrange = Color(0xFFff9800);
  static const Color errorRed = Color(0xFFff6b6b);
  static const Color emergencyRed = Color(0xFFff4757);
  
  // 背景漸層
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryBlue, primaryPurple],
  );
  
  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFf5f7fa), Color(0xFFc3cfe2)],
  );
  
  // 文字色彩
  static const Color textPrimary = Color(0xFF2d5a87);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textLight = Color(0xFF999999);
  
  // 主題設定
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryBlue,
        brightness: Brightness.light,
      ),
      
      // AppBar 主題
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: textPrimary),
      ),
      
      // 卡片主題
      cardTheme: CardThemeData(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      
      // 按鈕主題
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: successGreen,
          foregroundColor: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      
      // FloatingActionButton 主題
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: successGreen,
        foregroundColor: Colors.white,
        elevation: 8,
      ),
      
      // 文字主題
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          color: textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: textSecondary,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: textLight,
          fontSize: 12,
        ),
      ),
      
      // 輸入框主題
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFe0e0e0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryBlue, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
  
  // 自訂裝飾
  static BoxDecoration get primaryGradientDecoration {
    return const BoxDecoration(
      gradient: primaryGradient,
    );
  }
  
  static BoxDecoration get cardDecoration {
    return BoxDecoration(
      gradient: cardGradient,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }
  
  static BoxDecoration get emergencyButtonDecoration {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0xFFff4757), Color(0xFFc44569)],
      ),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.2),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }
}
