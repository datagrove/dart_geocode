import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:csv/csv.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:collection';

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
    'First Name': field[6],
    'Last Name': field[5],
    'Name Prefix': field[8],
    'Credential': field[10],
    'Provider Address': field[28],
    'Provider Address 2': field[29],
    'Provider City': field[30],
    'Provider State': field[31],
    'Provider Zip': field[32],
    'Provider Type': field[47]
    });
  }
}
print(npiMapList);

// var url = Uri.parse('https://nominatim.openstreetmap.org/search?street=5+JONATHAN+MORRIS+CIRCLE&state=PA&postalcode=19063&format=json&limit=2');
for (var map in npiMapList){
  print(map['NPI']);
  var response = await nominatim_geocode(map['Provider Zip'], address: map['Provider Address'], state: map['Provider State']);
  parse_nominatim_response(response, map);
  if (map.containsKey('lat')){
    continue;
  } else {
    var response_2 = await nominatim_geocode(map['Provider Zip'], address: map['Provider Address 2'], state: map['Provider State']);
    parse_nominatim_response(response_2, map);
    if (map.containsKey('lat')){
    continue;
    } else {
    var response_3 = await nominatim_geocode(map['Provider Zip']);
    parse_nominatim_response(response_3, map);
    };
  }
}

print(npiMapList);
var locations = File('npi_locations.csv');
try {
    for (var provider in npiMapList) {
      var mapList = [];
      provider.values.forEach((value){
        mapList.add(value);
      }
      );
      var info = mapList.toString();
      var infoBrackets = info.substring(1,info.length -1);
      var values = infoBrackets.split(', ');
      var csvValues = values.map((value)=>'"$value"').join(', ');
      await locations.writeAsString('$csvValues\r\n', mode: FileMode.append);
    };
  } catch (e) {
    print('Error: $e');
  }
}
