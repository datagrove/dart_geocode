import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:http/http.dart' as http;

void main() async{
  var response = await nominatim_geocode('12211', address: '12 Laurel Drive', state: 'NY');
  print(response.body);
}