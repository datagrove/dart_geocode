import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

void main() async{
var url = Uri.parse('https://nominatim.openstreetmap.org/search?street=1033+ROUTE+46&state=NJ&postalcode=07013&format=json&limit=2');
var response = await http.get(url);
//var body = jsonDecode(response.body);
//print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
if (response.body == '[]'){
  print('empty');
} else {
  print("not empty");
}

/*
var test = <String, dynamic>{};

if (response.statusCode == 200){
  var decode = jsonDecode(response.body);
  //test['lat'] = decode[0]['lat'];
  //test['lon'] = decode[0]['lon'];
};
print(test);
print(test['lon']);
print(test['lat']);
*/
/*
var zoom = 14;
var n = 1 << zoom;
print(n);
double lon = double.parse(test['lon']);
double lat = double.parse(test['lat']);
var xcalc = n * ((lon+180)/360);
var xtile = xcalc.floor();
var lat_rad = lat*pi/180;
print(lat_rad);
var sec_lat = 1/(cos(lat_rad));
print('sec:${sec_lat}');
var tan_lat = tan(lat_rad);
print('tan:${tan_lat}');
var y = (log(tan_lat + sec_lat))/(log(2));
print(y);
var ytrans = (1 - (y/pi))/2;
print(ytrans);
var ycalc = n * ytrans;
print(ycalc);
///var ycalc = (n * (1-((log((tan(lat_rad))+(1/(cos(lat_rad))))/log(2))/pi)))/2;
var ytile = ycalc.floor();

print('zoom: ${zoom}, xtile: ${xtile}, ytile: ${ytile}');
*/
}