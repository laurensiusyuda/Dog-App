import 'dart:convert';

class Welcome {
  List<Breed> breeds;
  String id;
  String url;
  int width;
  int height;

  Welcome({
    required this.breeds,
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        breeds: List<Breed>.from(json["breeds"].map((x) => Breed.fromJson(x))),
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "breeds": List<dynamic>.from(breeds.map((x) => x.toJson())),
        "id": id,
        "url": url,
        "width": width,
        "height": height,
      };
}

class Breed {
  Eight weight;
  Eight height;
  int id;
  String name;
  String countryCode;
  String bredFor;
  String breedGroup;
  String lifeSpan;
  String temperament;
  String origin;
  String referenceImageId;

  Breed({
    required this.weight,
    required this.height,
    required this.id,
    required this.name,
    required this.countryCode,
    required this.bredFor,
    required this.breedGroup,
    required this.lifeSpan,
    required this.temperament,
    required this.origin,
    required this.referenceImageId,
  });

  factory Breed.fromRawJson(String str) => Breed.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        weight: Eight.fromJson(json["weight"]),
        height: Eight.fromJson(json["height"]),
        id: json["id"],
        name: json["name"],
        countryCode: json["country_code"],
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
        "country_code": countryCode,
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
