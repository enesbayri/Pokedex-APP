// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_6/helper/ui_helper.dart';
import 'package:flutter_application_6/helper/ui_helperDetail.dart';
import 'package:flutter_application_6/model/pokemon.dart';

class DetailNameBar extends StatelessWidget {
  final PokemonModel poke;
  const DetailNameBar({required this.poke, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisSize: MainAxisSize.min,
        children: [
        Text(
          poke.name!,
          style: uiHelperDetail.getPokeName(),
        ),
        Chip(label: Text(chipDoldur(), style: uiHelper.getChipName())),
      ]),
    );
  }
  String chipDoldur(){
    String chip="";
    for (var i = 0; i < poke.type!.length; i++) {
      if(i==0){
        chip+=poke.type![i];
      }else{
        chip+=",${poke.type![i]}";
      }
    }
    return chip;
  }
}
