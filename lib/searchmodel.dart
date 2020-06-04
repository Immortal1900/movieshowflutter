
class result{
  double voteavg;
  var popularity;
  var searchitemid;
  var mediatype;
  var poster_path;
  List genreid=List();
 var original_title;
 List genrename=List();

  result({
    this.voteavg,
    this.popularity,
    this.genreid,
    this.searchitemid,
    this.mediatype,
    this.poster_path,
    this.original_title


  });
  factory result.fromJson(Map<String, dynamic> Json){
    return result(
        voteavg:  Json["vote_average"],
        popularity: Json["popularity"],
        genreid:  Json["genre_ids"],
        searchitemid:Json["id"],
        mediatype:Json["media_type"],
         poster_path: Json["poster_path"],
        original_title:Json["original_title"]
    );
  }
}
class search {
  final List<result> rs;

  search({
    this.rs,

  });
  factory  search.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;

   List<result> indialist = list.map((i) => result.fromJson(i)).toList();
    return search(
        rs: indialist,

    );

  }
}
