import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../features/trip_list/pages/trip_list_page.dart';
import '../features/map/pages/offline_map_page.dart';
import '../features/tracking/pages/trip_tracking_page.dart';
import '../features/settings/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // 頁面列表
  final List<Widget> _pages = const [
    TripListPage(),      // 行程
    OfflineMapPage(),    // 地圖
    TripTrackingPage(),  // 紀錄
    SettingsPage(),      // 設定
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
