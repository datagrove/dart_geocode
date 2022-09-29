import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:csv/csv.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() async {
final npilist = File('npi.csv').openRead();  
final fields = await npilist.transform(utf8.decoder).transform(CsvToListConverter()).toList();

var npiMapList = <Map>[];

for (var field in fields){
  if (field[1] != "" && field[0] != "NPI" ){
    npiMapList.add({
    'NPI': field[0],
    'EIN': field[3],
    'Business Name': field[4],
    'Provider Address': field[28],
    'Provider Address 2': field[29],
    'Provider City': field[30],
    'Provider State': field[31],
    'Provider Zip': field[32],
    'Provider Type': field[47]
    });
  }
/*  Provider p = Provider();
  p.NPI = field[0];
  p.EIN = field[3];
  p.Provider_Business_Name = field[4];
  p.Provider_Practice_Location_Address = field[28];
  p.Provider_Second_Line_Practice_Location_Address = field[29];
  p.Provider_Practice_City = field[30];
  p.Provider_Practice_State = field[31];
  p.Provider_Practice_Postal_Code = field[32];
  p.Provider_Taxonomy_Code = field[47];
 
  //Convert instance of Provider to Map
  Map<String, dynamic> mapObject = p.toMap();
  npiMapList.add(p);

  print(p.NPI);
*/ 
}
print(npiMapList);
}
