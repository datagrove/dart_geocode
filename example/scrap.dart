import 'package:dart_npi_geocode/dart_npi_geocode.dart';
import 'package:http/http.dart' as http;

void main() async{
  var response = nominatim_geocode('12211');
  print(response.body);
}