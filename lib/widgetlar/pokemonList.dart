// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/helper/ui_helper.dart';
import 'package:flutter_application_6/model/pokemon.dart';
import 'package:flutter_application_6/sayfalar/detaySayfa.dart';
import 'package:flutter_application_6/servisler/pokedexApi.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeList extends StatefulWidget {
  const PokeList({super.key});

  @override
  State<PokeList> createState() => _PokeListState();
}

class _PokeListState extends State<PokeList> {
  late Future<List<PokemonModel>> pokemonlar;
  @override
  void initState() {
   
    super.initState();
    pokemonlar = PokeApi.apiVeriCek();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: pokemonlar,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> pokeliste = snapshot.data!;
          return GridView.count(
            crossAxisCount: uiHelper.getItemCount(),
            children: pokeliste
                .map((poke) => InkWell(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetaySayfa(poke: poke),));},
                  child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.w)),
                        color: uiHelper.getCardColor(poke.type![0]),
                        child: Padding(
                          padding: uiHelper.getCardinPadding(),
                          child: Stack(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  poke.name!,
                                  style: uiHelper.getPokeName(),
                                ),
                                Chip(
                                    label: Text(poke.type![0],
                                        style: uiHelper.getChipName())),
                              ],
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Image.asset(
                                "assets/pokeball.png",
                                width: uiHelper.getImgSize(),
                                height: uiHelper.getImgSize(),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Hero(
                                tag: poke.name!,
                                child: CachedNetworkImage(
                                  imageUrl: poke.img!,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  width: uiHelper.getImgSize(),
                                  height: uiHelper.getImgSize(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                ))
                .toList(),
          );
        } else if (snapshot.hasData) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
