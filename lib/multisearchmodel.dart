
class searchdata{
  var vote_average;
  var poster_path;
  var original_title;
  var id;
  List genrename=List();
  searchdata({
    this.vote_average,
    this.poster_path,
    this.original_title,
    this.id
  });
  factory searchdata.fromJson(Map<String, dynamic> Json){

    return searchdata(
        vote_average:  Json["vote_average"],
        poster_path: Json["poster_path"],
        original_title:Json["original_title"],
        id:Json["id"]
    );
  }
}
class multisearch {
  final List<searchdata> rs;
  multisearch({
    this.rs,
  });
  factory  multisearch.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;

    List<searchdata> indialist = list.map((i) => searchdata.fromJson(i)).toList();
    return multisearch(
      rs: indialist,
    );
  }
}
