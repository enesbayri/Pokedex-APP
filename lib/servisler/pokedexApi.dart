// ignore_for_file: file_names

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_application_6/model/pokemon.dart';

class PokeApi{
  static const String apiUrl="https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> apiVeriCek()async{
    List<PokemonModel> pokemonlar=[];
    var veri=await Dio().get(PokeApi.apiUrl);

    var pokeList=jsonDecode(veri.data)["pokemon"] as List;

    pokemonlar=pokeList.map((e) => PokemonModel.fromJson(e)).toList();

    return pokemonlar;
  }
  

}