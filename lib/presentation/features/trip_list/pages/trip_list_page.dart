import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/mock_data/trip_mock_data.dart';
import '../widgets/trip_card_widget.dart';

class TripListPage extends StatelessWidget {
  const TripListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mockTrips = TripMockData.getMockTrips();
    
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
                    // Mountain Icon
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
                          '🏔️',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      AppConstants.appName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.mountainBlue,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Page Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppConstants.tripListTitle,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.mountainBlue,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Content Area - 行程卡片列表
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
                      
                      // 行程列表
                      Expanded(
                        child: mockTrips.isEmpty
                            ? _buildEmptyState()
                            : ListView.builder(
                                itemCount: mockTrips.length,
                                padding: const EdgeInsets.only(
                                  bottom: AppConstants.paddingLarge,
                                ),
                                itemBuilder: (context, index) {
                                  final trip = mockTrips[index];
                                  return TripCardWidget(
                                    tripName: trip['tripName'],
                                    date: trip['date'],
                                    duration: trip['duration'],
                                    status: trip['status'],
                                    onTap: () {
                                      // TODO: 實作行程詳情頁面導航
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('點擊了 ${trip['tripName']}'),
                                          duration: const Duration(seconds: 2),
                                        ),
                                      );
                                    },
                                  );
                                },
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
      
      // FloatingActionButton for adding new trip
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: 實作新增行程功能
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('新增行程功能即將推出'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        backgroundColor: AppTheme.successGreen,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.list_alt,
            size: 64,
            color: AppTheme.textLight,
          ),
          SizedBox(height: 16),
          Text(
            '尚無行程',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimary,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '點擊右下角按鈕新增您的第一個登山行程',
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
