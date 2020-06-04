

class getgenre{
  var id;
  var name;
  List genre_ids=List();
  getgenre({
    this.id,
    this.name,

  });
  factory getgenre.fromJson(Map<String, dynamic> Json){
    return getgenre(
        id: Json["vote_average"],
         name:Json["name"],

    );
  }
}
class genre {
  final List<getgenre> rs;
  genre({
    this.rs,
  });
  factory genre.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['genres'] as List;
    List<getgenre> genlist= list.map((i) => getgenre.fromJson(i)).toList();
    return genre(
      rs: genlist,
    );
  }
}






/*
class result{
  var id;
  var name;
  result({
    this.id,
    this.name,
  });
  factory result.fromJson(Map<String, dynamic> Json){
    return result(
      id:  Json["id"],
      name: Json["name"],
     );
  }

}
class genre {
  final List<result> rs;

  genre({
    this.rs,

  });
  factory genre.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;

    List<result> genrelist = list.map((i) => result.fromJson(i)).toList();
    return genre(
      rs: genrelist,
    );

  }
}
*/