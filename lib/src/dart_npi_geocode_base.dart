// TODO: Put public facing types in this file.
import 'package:http/http.dart' as http;
import 'dart:math';
import 'dart:convert';

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

nominatim_geocode(var postal_code,{var address, var state}) async{
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

parse_nominatim_response(var response,Map map){
  if (response.statusCode == 200){ //If response is OK decode response
    var decode = jsonDecode(response.body);
      if (response.body != '[]'){ //if response contains results parse Lat/Long of first result
        map['lat'] = double.parse(decode[0]['lat']);
        map['lon'] = double.parse(decode[0]['lon']);
      }
  };
  if (map.containsKey('lat')){ //if the map has a location calculate TMS 
    var zoom = 14;
    var n = 1 << zoom;
    map['xtile'] = (n * ((map['lon']+180)/360)).floor();
    var lat_rad = map['lat']*(pi/180);
    map['ytile'] = ((n * (1-((log((tan(lat_rad))+(1/(cos(lat_rad))))/log(2))/pi)))/2).floor(); //should calculate the Y tile location for the given zoom level but does not return correct result.
    map['zoom'] = zoom;
  }
  return map;
}