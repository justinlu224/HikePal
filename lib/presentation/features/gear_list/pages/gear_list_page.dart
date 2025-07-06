import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';

class GearListPage extends StatelessWidget {
  const GearListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppTheme.primaryGradientDecoration,
        child: SafeArea(
          child: Column(
            children: [
              // App Header
              Padding(
                padding: const EdgeInsets.all(AppConstants.paddingLarge),
                child: Row(
                  children: [
                    // Gear Icon
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [AppTheme.successGreen, Color(0xFF2196F3)],
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '🎒',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      AppConstants.gearListTitle,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.mountainBlue,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Page Title & Subtitle
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
                child: Column(
                  children: [
                    Text(
                      '玉山主峰單攻 - 裝備檢查',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.mountainBlue,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Content Area - 裝備清單區域
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppConstants.radiusLarge),
                      topRight: Radius.circular(AppConstants.radiusLarge),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: AppConstants.paddingLarge),
                      
                      // 裝備清單內容區域
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppConstants.paddingMedium,
                          ),
                          child: Column(
                            children: [
                              // 暫時的佔位內容，後續會被實際的裝備分類替換
                              Expanded(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: AppTheme.textLight.withValues(alpha: 0.1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.checklist,
                                          size: 40,
                                          color: AppTheme.textLight,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      const Text(
                                        '裝備清單',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: AppTheme.textPrimary,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '即將顯示裝備分類和檢查清單',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppTheme.textSecondary,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              
                              // 完成度進度條區域
                              Container(
                                padding: const EdgeInsets.all(AppConstants.paddingMedium),
                                decoration: BoxDecoration(
                                  color: AppTheme.textLight.withValues(alpha: 0.05),
                                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      '完成度: 4/8 (50%)',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppTheme.textSecondary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    LinearProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: Color(0xFFe0e0e0),
                                      valueColor: AlwaysStoppedAnimation<Color>(AppTheme.successGreen),
                                    ),
                                  ],
                                ),
                              ),
                              
                              const SizedBox(height: AppConstants.paddingLarge),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
