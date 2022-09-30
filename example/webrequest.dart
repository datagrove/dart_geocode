import 'package:http/http.dart' as http;

void main() async{
var url = Uri.parse('https://nominatim.openstreetmap.org/search?street=5+JONATHAN+MORRIS+CIRCLE&state=PA&postalcode=19063&format=json&limit=2');
var response = await http.get(url);
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');

}