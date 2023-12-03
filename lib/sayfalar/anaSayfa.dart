// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_6/widgetlar/apptitle.dart';
import 'package:flutter_application_6/widgetlar/pokemonList.dart';


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        AppTitle(),
        Expanded(child: PokeList())
      ]),
     
    );
  }
}