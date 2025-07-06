class GearMockData {
  static Map<String, List<Map<String, dynamic>>> getMockGearData() {
    return {
      '衣物裝備': [
        {'name': '排汗衣', 'isChecked': true},
        {'name': '保暖外套', 'isChecked': true},
        {'name': '雨衣褲', 'isChecked': false},
        {'name': '登山褲', 'isChecked': true},
        {'name': '登山襪', 'isChecked': false},
      ],
      '必要裝備': [
        {'name': '頭燈', 'isChecked': true},
        {'name': '備用電池', 'isChecked': false},
        {'name': '急救包', 'isChecked': false},
        {'name': '登山杖', 'isChecked': true},
        {'name': '防曬乳', 'isChecked': false},
      ],
      '食物飲水': [
        {'name': '運動飲料 2L', 'isChecked': false},
        {'name': '行動糧', 'isChecked': false},
        {'name': '午餐', 'isChecked': true},
        {'name': '能量棒', 'isChecked': false},
      ],
    };
  }
  
  static int getTotalItems() {
    final data = getMockGearData();
    int total = 0;
    data.forEach((category, items) {
      total += items.length;
    });
    return total;
  }
  
  static int getCheckedItems() {
    final data = getMockGearData();
    int checked = 0;
    data.forEach((category, items) {
      for (var item in items) {
        if (item['isChecked'] == true) {
          checked++;
        }
      }
    });
    return checked;
  }
  
  static double getCompletionPercentage() {
    final total = getTotalItems();
    final checked = getCheckedItems();
    return total > 0 ? checked / total : 0.0;
  }
}
