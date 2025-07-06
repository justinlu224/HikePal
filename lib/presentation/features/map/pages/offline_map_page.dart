import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';

class OfflineMapPage extends StatelessWidget {
  const OfflineMapPage({super.key});

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
                    // Map Icon
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
                          '🗺️',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      AppConstants.offlineMapTitle,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.mountainBlue,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Content Area
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
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map_outlined,
                          size: 64,
                          color: AppTheme.textLight,
                        ),
                        SizedBox(height: 16),
                        Text(
                          '離線地圖頁面',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '即將實作...',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ],
                    ),
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
