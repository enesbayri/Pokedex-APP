// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_6/helper/ui_helperDetail.dart';
import 'package:flutter_application_6/model/pokemon.dart';

class CardIcerik extends StatelessWidget {
  final PokemonModel poke;
  const CardIcerik({required this.poke,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0,left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Name",style: uiHelperDetail.getCardKey(),),
                    Text(poke.name!,style: uiHelperDetail.getCardValue(),),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Height",style: uiHelperDetail.getCardKey(),),
                    Text(poke.height!,style: uiHelperDetail.getCardValue()),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Weight",style: uiHelperDetail.getCardKey(),),
                    Text(poke.weight!,style: uiHelperDetail.getCardValue()),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Spawn Time",style: uiHelperDetail.getCardKey(),),
                    Text(poke.spawnTime!,style: uiHelperDetail.getCardValue()),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Weakness",style: uiHelperDetail.getCardKey(),),
                    Text(PokemonModel.icerikDiziToString(poke, "weakness"),style: uiHelperDetail.getCardValue()),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Pre Evolation",style: uiHelperDetail.getCardKey(),),
                    Text(PokemonModel.icerikDiziToString(poke, "prevEvolution"),style: uiHelperDetail.getCardValue()),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Next Evolation",style: uiHelperDetail.getCardKey(),),
                   Text(PokemonModel.icerikDiziToString(poke, "nextEvolution"),style: uiHelperDetail.getCardValue()),
                  ],),
                ],),
    );
  }
}