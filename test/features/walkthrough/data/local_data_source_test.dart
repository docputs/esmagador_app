import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:esmagador/features/walkthrough/data/local_data_source.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences;
  SharedLocalDataSource dataSource;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = SharedLocalDataSource(mockSharedPreferences);
  });

  group('cacheWalkthrough', () {
    test('should cache bool data successfully in the device', () async {
      await dataSource.cacheWalkthrough();

      verify(mockSharedPreferences.setBool('isNewDevice', false));
      verifyNoMoreInteractions(mockSharedPreferences);
    });
  });

  group('isNewDevice', () {
    test('should get a true value when device is new to the app', () async {
      final result = await dataSource.isNewDevice();

      expect(result, true);
    });

    test('should get a false value when device has already used the app',
        () async {
      when(mockSharedPreferences.getBool(any)).thenReturn(false);

      final result = await dataSource.isNewDevice();

      expect(result, false);
    });
  });
}
