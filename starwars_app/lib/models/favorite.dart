class Favorite {
  final int? id;
  final String json;
  final String type;

  Favorite(this.json, this.type, {this.id});

  Map<String, dynamic> toMap (){
    return {
      'id' : id,
      'json' : json,
      'type' : type,
    };
  }
}