class Avatar{
  final int? id;
  final String json;

  Avatar( this.json, {this.id,});

  Map<String, dynamic> toMap (){
    return {
      'id' : id,
      'json' : json,
    };
  }


}