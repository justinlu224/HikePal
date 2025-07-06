import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'app.dart';

// 全域服務定位器
final GetIt serviceLocator = GetIt.instance;

void main() async {
  // 確保 Flutter 綁定初始化
  WidgetsFlutterBinding.ensureInitialized();
  
  // 設定系統 UI 樣式
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  
  // 設定偏好的螢幕方向
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  // 初始化依賴注入
  await _initializeDependencies();
  
  // 啟動應用程式
  runApp(const HikePalApp());
}

/// 初始化依賴注入
/// 設定所有需要的服務和 Repository
Future<void> _initializeDependencies() async {
  // TODO: 在後續任務中實作具體的依賴注入
  // 這裡會註冊：
  // - Database (Drift)
  // - Repositories
  // - Use Cases
  // - BLoCs/Cubits
  
  // 範例：
  // serviceLocator.registerLazySingleton<AppDatabase>(() => AppDatabase());
  // serviceLocator.registerLazySingleton<TripRepository>(() => TripRepositoryImpl());
}
