// TODO: Put public facing types in this file.

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
