// To parse this JSON data, do
//
//     final pokemonModel = pokemonModelFromJson(jsonString);

import 'dart:convert';

PokemonModel pokemonModelFromJson(String str) =>
    PokemonModel.fromJson(json.decode(str));

String pokemonModelToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
  static String icerikDiziToString(PokemonModel poke, key) {
    String icerik = "";
    switch (key) {
      case "type":
       icerik = "Not Avaliable!";
          for (var i = 0; i < poke.type!.length; i++) {
            if (i == 0) {
              icerik = poke.type![i];
            } else {
              icerik += ",${poke.type![i]}";
            }
          }
   

        break;

      case "weakness":
        icerik = "Not Avaliable!";
          for (var i = 0; i < poke.weaknesses!.length; i++) {
            if (i == 0) {
              icerik = poke.weaknesses![i];
            } else {
              icerik += ",${poke.weaknesses![i]}";
            }
          }
       

        break;
      case "prevEvolution":
     
          icerik = "Not Avaliable!";
        
          for (var i = 0; i < poke.prevEvolution!.length; i++) {
            if (i == 0) {
              icerik = poke.prevEvolution![i].name!;
            } else {
              icerik += ",${poke.prevEvolution![i].name!}";
            }
          }
       

        break;  
      case "nextEvolution":
        icerik = "Not Avaliable!";
          for (var i = 0; i < poke.nextEvolution!.length; i++) {
            if (i == 0) {
              icerik = poke.nextEvolution![i].name!;
            } else {
              icerik += ",${poke.nextEvolution![i].name!}";
            }
          }
       

        break;   
      default:
    }

    return icerik;
  }

  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;
  int? candyCount;
  String? egg;
  double? spawnChance;
  double? avgSpawns;
  String? spawnTime;
  List<double>? multipliers;
  List<String>? weaknesses;
  List<Evolution>? prevEvolution;
  List<Evolution>? nextEvolution;

  PokemonModel({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.candyCount,
    this.egg,
    this.spawnChance,
    this.avgSpawns,
    this.spawnTime,
    this.multipliers,
    this.weaknesses,
    this.prevEvolution,
    this.nextEvolution,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: json["type"] == null
            ? []
            : List<String>.from(json["type"]!.map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"]?.toDouble(),
        avgSpawns: json["avg_spawns"]?.toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"] == null
            ? []
            : List<double>.from(json["multipliers"]!.map((x) => x?.toDouble())),
        weaknesses: json["weaknesses"] == null
            ? []
            : List<String>.from(json["weaknesses"]!.map((x) => x)),
        prevEvolution: json["prev_evolution"] == null
            ? []
            : List<Evolution>.from(
                json["prev_evolution"]!.map((x) => Evolution.fromJson(x))),
        nextEvolution: json["next_evolution"] == null
            ? []
            : List<Evolution>.from(
                json["next_evolution"]!.map((x) => Evolution.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": multipliers == null
            ? []
            : List<dynamic>.from(multipliers!.map((x) => x)),
        "weaknesses": weaknesses == null
            ? []
            : List<dynamic>.from(weaknesses!.map((x) => x)),
        "prev_evolution": prevEvolution == null
            ? []
            : List<dynamic>.from(prevEvolution!.map((x) => x.toJson())),
        "next_evolution": nextEvolution == null
            ? []
            : List<dynamic>.from(nextEvolution!.map((x) => x.toJson())),
      };
  @override
  String toString() {
    return 'PokemonModel(id: $id, num: $num, name: $name, img: $img, type: $type, height: $height, weight: $weight, candy: $candy, candyCount: $candyCount, egg: $egg, spawnChance: $spawnChance, avgSpawns: $avgSpawns, spawnTime: $spawnTime, multipliers: $multipliers, weaknesses: $weaknesses, prevEvolution: $prevEvolution, nextEvolution: $nextEvolution)';
  }
}

class Evolution {
  String? num;
  String? name;

  Evolution({
    this.num,
    this.name,
  });

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
      };
}
