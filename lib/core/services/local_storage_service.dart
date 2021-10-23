import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  /// This helps us to create an instance of the sharedprefence package
  Future<LocalStorageService> getInstance();

  /// saves the onboard boolean
  void saveOnboardSeen({bool value});

  /// get the onboard saved boolean
  Future<bool> getOnboardSeen();
}

class LocalStorageServiceImpl implements LocalStorageService {
  static SharedPreferences _preferences;
  static LocalStorageServiceImpl _instance;
  static const OnBoardKey = 'onBoardKey';
  @override
  Future<LocalStorageServiceImpl> getInstance() async {
    if (_instance == null) {
      _instance = LocalStorageServiceImpl();
    }
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
    return _instance;
  }

  @override
  Future<bool> getOnboardSeen() async {
    final response = await _getFromDisk(OnBoardKey);
    if (response == null) {
      return false;
    }
    return response;
  }

  @override
  void saveOnboardSeen({bool value}) {
    _saveStringToDisk(OnBoardKey, value);
  }

  dynamic _getFromDisk(String key) async {
    final value = await _preferences.get(key);
    print('(TRACE) LocalStorageService:_getFromDisk. key: $key value: $value');
    return value;
  }

  void _saveStringToDisk<T>(String key, T content) {
    print(
        '(TRACE) LocalStorageService:_saveStringToDisk. key: $key value: $content');
    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }
}
