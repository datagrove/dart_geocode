import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

void main() async{
var decode;
var url = Uri.parse('https://nominatim.openstreetmap.org/search?street=1270+PEACH+ST&state=CA&postalcode=93401&format=json&limit=2');
var response = await http.get(url);
//var body = jsonDecode(response.body);
//print('Response status: ${response.statusCode}');
//print('Response body: ${response.body}');
if (response.statusCode == 200){
  decode = jsonDecode(response.body);
  return decode;
};
print(decode);
/*
var lat = decode[0]['lat'];
var lon = decode[0]['lon'];
print(lat);
print(lon);
*/
/*
var zoom = 14;
var n = 1 << zoom;
var xtile = n * ((lon+180)/360);
xtile = xtile.floor();
var lat_rad = lat*(pi/180);
var ytile = (n * (1-((log((tan(lat_rad))+(1/(cos(lat_rad))))/log(2))/pi)))/2;
ytile = ytile.floor();

print('${zoom}, ${ztile}, ${ytile}');
*/
}