import '../../../presentation/features/trip_list/widgets/trip_card_widget.dart';

class TripMockData {
  static List<Map<String, dynamic>> getMockTrips() {
    return [
      {
        'tripName': '玉山主峰單攻',
        'date': '2024-07-15',
        'duration': '1天',
        'status': TripStatus.planning,
      },
      {
        'tripName': '陽明山東西大縱走',
        'date': '2024-07-20',
        'duration': '1天',
        'status': TripStatus.inProgress,
      },
      {
        'tripName': '合歡山北峰',
        'date': '2024-07-08',
        'duration': '1天',
        'status': TripStatus.completed,
      },
    ];
  }
}
