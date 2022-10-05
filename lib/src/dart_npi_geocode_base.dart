// TODO: Put public facing types in this file.
import 'package:http/http.dart' as http;

/// Checks if you are awesome. Spoiler: you are.
class Album {
  final int id;
  final String title;

  const Album({
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String,dynamic> json){
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

nominatim_geocode(postal_code,{address, state}) async{
  await Future.delayed(Duration(seconds: 1));
  var url = Uri(
  scheme:'https',
  host: 'nominatim.openstreetmap.org',
  path: '/search',
  queryParameters: {'street': address, 'state': state , 'country': 'USA' , 'postalcode': postal_code.substring(0,5), 'format':'json', 'limit': '2'}
  );
  var response = await http.get(url);
  return response;
}