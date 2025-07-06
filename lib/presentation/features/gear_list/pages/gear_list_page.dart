import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/mock_data/gear_mock_data.dart';
import '../widgets/gear_category_widget.dart';
import '../widgets/gear_item_widget.dart';

class GearListPage extends StatefulWidget {
  const GearListPage({super.key});

  @override
  State<GearListPage> createState() => _GearListPageState();
}

class _GearListPageState extends State<GearListPage> {
  late Map<String, List<Map<String, dynamic>>> _gearData;

  @override
  void initState() {
    super.initState();
    _gearData = GearMockData.getMockGearData();
  }

  void _updateGearItem(String category, int itemIndex, bool? value) {
    setState(() {
      _gearData[category]![itemIndex]['isChecked'] = value ?? false;
    });
  }

  String _getCategoryIcon(String category) {
    switch (category) {
      case '衣物裝備':
        return '🧥';
      case '必要裝備':
        return '🔦';
      case '食物飲水':
        return '🍯';
      default:
        return '📦';
    }
  }

  @override
  Widget build(BuildContext context) {
    final checkedItems = GearMockData.getCheckedItems();
    final totalItems = GearMockData.getTotalItems();
    final completionPercentage = GearMockData.getCompletionPercentage();

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
                      
                      // 裝備分類列表
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppConstants.paddingMedium,
                          ),
                          child: ListView(
                            children: _gearData.entries.map((entry) {
                              final category = entry.key;
                              final items = entry.value;
                              
                              return GearCategoryWidget(
                                categoryTitle: category,
                                categoryIcon: _getCategoryIcon(category),
                                gearItems: items.asMap().entries.map((itemEntry) {
                                  final index = itemEntry.key;
                                  final item = itemEntry.value;
                                  
                                  return GearItemWidget(
                                    itemName: item['name'],
                                    isChecked: item['isChecked'],
                                    onChanged: (value) {
                                      _updateGearItem(category, index, value);
                                    },
                                  );
                                }).toList(),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      
                      // 完成度進度條區域
                      Container(
                        margin: const EdgeInsets.all(AppConstants.paddingMedium),
                        padding: const EdgeInsets.all(AppConstants.paddingMedium),
                        decoration: BoxDecoration(
                          color: AppTheme.textLight.withValues(alpha: 0.05),
                          borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '完成度: $checkedItems/$totalItems (${(completionPercentage * 100).round()}%)',
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppTheme.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: completionPercentage,
                              backgroundColor: const Color(0xFFe0e0e0),
                              valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.successGreen),
                            ),
                          ],
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
