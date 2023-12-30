// ignore_for_file: file_names

//Model untuk menghandle data dari Json
import 'dart:convert';

class Welcome {
  Eight weight;
  Eight height;
  int id;
  String name;
  String bredFor;
  String breedGroup;
  String lifeSpan;
  String temperament;
  String origin;
  String referenceImageId;

  Welcome({
    required this.weight,
    required this.height,
    required this.id,
    required this.name,
    required this.bredFor,
    required this.breedGroup,
    required this.lifeSpan,
    required this.temperament,
    required this.origin,
    required this.referenceImageId,
  });

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        weight: Eight.fromJson(json["weight"]),
        height: Eight.fromJson(json["height"]),
        id: json["id"],
        name: json["name"],
        bredFor: json["bred_for"],
        breedGroup: json["breed_group"],
        lifeSpan: json["life_span"],
        temperament: json["temperament"],
        origin: json["origin"],
        referenceImageId: json["reference_image_id"],
      );

  Map<String, dynamic> toJson() => {
        "weight": weight.toJson(),
        "height": height.toJson(),
        "id": id,
        "name": name,
        "bred_for": bredFor,
        "breed_group": breedGroup,
        "life_span": lifeSpan,
        "temperament": temperament,
        "origin": origin,
        "reference_image_id": referenceImageId,
      };
}

class Eight {
  String imperial;
  String metric;

  Eight({
    required this.imperial,
    required this.metric,
  });

  factory Eight.fromRawJson(String str) => Eight.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Eight.fromJson(Map<String, dynamic> json) => Eight(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}
