import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:csv/csv.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';

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
print(npiMapList[0]);

// var url = Uri.parse('https://nominatim.openstreetmap.org/search?street=5+JONATHAN+MORRIS+CIRCLE&state=PA&postalcode=19063&format=json&limit=2');
for (var map in npiMapList){
  await Future.delayed(Duration(seconds: 1));
  var url = Uri(
  scheme:'https',
  host: 'nominatim.openstreetmap.org',
  path: '/search',
  queryParameters: {'street': map['Provider Address'], 'state': map['Provider State'] , 'postalcode': map['Provider Zip'].substring(0,5), 'format':'json', 'limit': '2'}
);
print(url);
var response = await http.get(url);
if (response.statusCode == 200){
  var decode = jsonDecode(response.body);
  if (response.body != '[]'){
  map['lat'] = double.parse(decode[0]['lat']);
  map['lon'] = double.parse(decode[0]['lon']);
  }
};
if (map.containsKey('lat')){
var zoom = 14;
var n = 1 << zoom;
map['xtile'] = n * ((map['lon']+180)/360);
var lat_rad = map['lat']*(pi/180);
map['ytile'] = (n * (1-((log((tan(lat_rad))+(1/(cos(lat_rad))))/log(2))/pi)))/2;
map['zoom'] = zoom;
}
}

print(npiMapList);

}


/*  Scrap for Now

Provider p = Provider();
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