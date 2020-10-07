import 'package:esmagador/features/walkthrough/data/local_data_source.dart';
import 'package:esmagador/features/walkthrough/usecases/show_walkthrough.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLocalDataSource extends Mock implements LocalDataSource {}

void main() {
  MockLocalDataSource mockLocalDataSource;
  ShowWalkthrough usecase;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    usecase = ShowWalkthrough(mockLocalDataSource);
  });

  test('should return true and show walkthrough when device is new to the app',
      () async {
    when(mockLocalDataSource.isNewDevice()).thenAnswer((_) async => true);

    final result = await usecase.call();

    expect(result, true);
  });

  test(
      'should return false and don\'t show walkthrough when device has already used the app',
      () async {
    when(mockLocalDataSource.isNewDevice()).thenAnswer((_) async => false);

    final result = await usecase.call();

    expect(result, false);
  });
}
