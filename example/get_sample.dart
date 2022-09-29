import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:csv/csv.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() async {
  var filePath =
      p.join('/', 'Users', 'rsouthworth', 'downloads', 'npidata_20220911.csv');
  
  var sample = File('npi.csv');


  File file = File(filePath);
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .take(1000);
  
  try {
    await for (var line in lines) {
      await sample.writeAsString('$line\r\n', mode: FileMode.append);
    };
  } catch (e) {
    print('Error: $e');
  }
}
