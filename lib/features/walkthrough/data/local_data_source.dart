import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  Future<bool> isNewDevice();
  Future<void> cacheWalkthrough();
}

class SharedLocalDataSource implements LocalDataSource {
  final SharedPreferences _sharedPreferences;

  const SharedLocalDataSource(this._sharedPreferences);

  @override
  Future<void> cacheWalkthrough() async {
    await _sharedPreferences.setBool('isNewDevice', false);
  }

  @override
  Future<bool> isNewDevice() async {
    final isNewDevice = _sharedPreferences.getBool('isNewDevice');
    if (isNewDevice == null) return true;
    return isNewDevice;
  }
}
