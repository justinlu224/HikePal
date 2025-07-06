class AppConstants {
  // App 基本資訊
  static const String appName = 'HikePal';
  static const String appVersion = '1.0.0';
  static const String appDescription = '你的登山夥伴';
  
  // 頁面標題
  static const String tripListTitle = '我的登山行程';
  static const String gearListTitle = '裝備清單';
  static const String offlineMapTitle = '離線地圖';
  static const String trackingTitle = '行程紀錄';
  static const String reviewTitle = '行程回顧';
  static const String safetyTitle = '安全中心';
  
  // 行程狀態
  static const String tripStatusPlanning = '計畫中';
  static const String tripStatusInProgress = '進行中';
  static const String tripStatusCompleted = '已完成';
  static const String tripStatusArchived = '已封存';
  
  // 裝備分類
  static const String gearCategoryClothing = '衣物裝備';
  static const String gearCategoryEssential = '必要裝備';
  static const String gearCategoryFood = '食物飲水';
  static const String gearCategoryPublic = '公裝';
  
  // 導航標籤
  static const String navTrips = '行程';
  static const String navMap = '地圖';
  static const String navTracking = '紀錄';
  static const String navReview = '回顧';
  static const String navSafety = '安全';
  
  // 按鈕文字
  static const String buttonStart = '開始';
  static const String buttonPause = '暫停';
  static const String buttonStop = '停止';
  static const String buttonSave = '儲存';
  static const String buttonShare = '分享';
  static const String buttonDownload = '下載';
  static const String buttonEmergency = '緊急求救';
  static const String buttonAddTrip = '新增行程';
  static const String buttonAddWaypoint = '新增記錄點';
  
  // 單位
  static const String unitMeter = 'm';
  static const String unitKilometer = 'km';
  static const String unitHour = 'h';
  static const String unitMinute = 'min';
  static const String unitCelsius = '°C';
  static const String unitPercent = '%';
  static const String unitKmh = 'km/h';
  
  // 預設值
  static const int defaultGpsUpdateInterval = 5; // 秒
  static const int defaultBatteryOptimizedInterval = 30; // 秒
  static const double defaultMapZoom = 15.0;
  static const int maxPhotosPerWaypoint = 3;
  static const int maxEmergencyContacts = 3;
  
  // 檔案路徑
  static const String offlineMapPath = 'offline_maps';
  static const String gpxFilePath = 'gpx_files';
  static const String photosPath = 'photos';
  static const String backupPath = 'backup';
  
  // API 相關
  static const String weatherApiBaseUrl = 'https://opendata.cwb.gov.tw';
  static const int apiTimeoutSeconds = 30;
  
  // 錯誤訊息
  static const String errorNetworkConnection = '網路連線錯誤';
  static const String errorLocationPermission = '需要位置權限才能使用此功能';
  static const String errorCameraPermission = '需要相機權限才能拍照';
  static const String errorStoragePermission = '需要儲存權限才能保存檔案';
  static const String errorGpsNotAvailable = 'GPS 訊號不可用';
  static const String errorFileNotFound = '檔案不存在';
  static const String errorInvalidData = '資料格式錯誤';
  
  // 成功訊息
  static const String successTripSaved = '行程已儲存';
  static const String successTrackingSaved = '軌跡已儲存';
  static const String successPhotoSaved = '照片已儲存';
  static const String successEmergencyMessageSent = '緊急訊息已發送';
  static const String successMapDownloaded = '地圖下載完成';
  
  // 確認訊息
  static const String confirmDeleteTrip = '確定要刪除此行程嗎？';
  static const String confirmStopTracking = '確定要停止記錄嗎？';
  static const String confirmSendEmergency = '確定要發送緊急求救訊息嗎？';
  
  // 動畫持續時間
  static const Duration animationDurationShort = Duration(milliseconds: 200);
  static const Duration animationDurationMedium = Duration(milliseconds: 300);
  static const Duration animationDurationLong = Duration(milliseconds: 500);
  
  // 間距
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;
  
  // 圓角
  static const double radiusSmall = 4.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 12.0;
  static const double radiusXLarge = 16.0;
  
  // 陰影
  static const double elevationLow = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationHigh = 8.0;
}
