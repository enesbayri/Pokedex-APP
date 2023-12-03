// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/helper/ui_helper.dart';
import 'package:flutter_application_6/model/pokemon.dart';
import 'package:flutter_application_6/widgetlar/detailCardTexts.dart';
import 'package:flutter_application_6/widgetlar/detailNameBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetaySayfa extends StatefulWidget {
  final PokemonModel poke;
  const DetaySayfa({required this.poke, super.key});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 1.sh,
          width: 1.sw,
          color: uiHelper.getCardColor(widget.poke.type![0]),
        ),
        Positioned(
            top: 0.15.sh,
            left: 0.1.sw,
            child: DetailNameBar(poke: widget.poke)),
        Positioned(
          bottom: 0.57.sh,
          right: 0,
          child: Image.asset(
            "assets/pokeball.png",
            width: uiHelper.getImgSize(),
            height: uiHelper.getImgSize(),
            fit: BoxFit.cover,
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.6.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.w)),
              child:CardIcerik(poke: widget.poke),

            ),
            ),
        Positioned(bottom: 0.5.sh,left: (0.5.sw)-(0.2.sh)/2,
          child: Hero(
            tag: widget.poke.name!,
            child: CachedNetworkImage(imageUrl:widget.poke.img!,placeholder: (context, url) => const CircularProgressIndicator(),
                  height: 0.2.sh,
                  width: 0.2.sh,
                  fit: BoxFit.cover,),
          ))
      
      ]),
    );
  }

}
