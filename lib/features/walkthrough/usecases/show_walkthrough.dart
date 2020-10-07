import 'package:esmagador/features/walkthrough/data/local_data_source.dart';

class ShowWalkthrough {
  final LocalDataSource _localDataSource;

  const ShowWalkthrough(this._localDataSource);

  Future<bool> call() async {
    final isNewDevice = await _localDataSource.isNewDevice();
    if (isNewDevice == true) {
      await _localDataSource.cacheWalkthrough();
      return true;
    }
    return false;
  }
}
