import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:test/test.dart';
import 'package:csv/csv.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
