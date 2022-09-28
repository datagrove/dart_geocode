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
final npilist = File('npi.csv').openRead();  
final fields = await npilist.transform(utf8.decoder).transform(CsvToListConverter()).toList();
print(fields[0][0]);

for (var field in fields){
  Provider p = new Provider();
  p.NPI = field[0];
  p.Provider_First_Line_Business_Practice_Location_Address = field[28];
  p.Provider_Second_Line_Business_Practice_Location_Address = field[29];
  p.Provider_Business_Practice_Location_Address_City_Name = field[30];
  p.Provider_Business_Practice_Location_Address_State_Name = field[31];
  p.Provider_Business_Practice_Location_Address_Postal_Code = field[32];
  print(p.NPI);
}
}
