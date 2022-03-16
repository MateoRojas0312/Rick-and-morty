import 'dart:convert';
import 'package:rick_and_morty/models/info.dart';
import 'package:rick_and_morty/models/results.dart';


Characters charactersFromJson(String str) => Characters.fromJson(json.decode(str));

String charactersToJson(Characters data) => json.encode(data.toJson());

class Characters {
  Characters({
    this.info,
    this.results,
  });

  Info? info;
  List<Result>? results;

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(

        info: Info.fromJson(json["info"]),
        results:List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
      

  Map<String, dynamic> toJson() => {
        "info": info!.toJson(),
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}
