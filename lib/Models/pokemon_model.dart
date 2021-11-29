// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

ReqRespRespuesta reqRespRespuestaFromJson(String str) =>
    ReqRespRespuesta.fromJson(json.decode(str));

String reqRespRespuestaToJson(ReqRespRespuesta data) =>
    json.encode(data.toJson());

class ReqRespRespuesta {
  ReqRespRespuesta({
    required this.pokemon,
  });

  List<Pokemon> pokemon;

  factory ReqRespRespuesta.fromJson(Map<String, dynamic> json) =>
      ReqRespRespuesta(
        pokemon:
            List<Pokemon>.from(json["pokemon"].map((x) => Pokemon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pokemon": List<dynamic>.from(pokemon.map((x) => x.toJson())),
      };
}

class Pokemon {
  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
  });

  int id;
  String num;
  String name;
  String img;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
      };
}
