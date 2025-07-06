import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/constants/app_constants.dart';
import 'presentation/pages/main_page.dart';

class HikePalApp extends StatelessWidget {
  const HikePalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      
      // 主題設定
      theme: AppTheme.lightTheme,
      
      // 使用新的主頁面
      home: const MainPage(),
      
      // 路由設定 (後續會用 go_router 替換)
      // routes: AppRoutes.routes,
    );
  }
}
