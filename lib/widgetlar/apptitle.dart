import 'package:flutter/material.dart';
import 'package:flutter_application_6/helper/ui_helper.dart';


class AppTitle extends StatefulWidget{
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: uiHelper.getCardinPadding(),
            child: Text(
              "Pokedex",
              style: uiHelper.getAppTitle(),
            ),
          )),
      Align(
        alignment: Alignment.topRight,
        child: Image.asset(
          "assets/pokeball.png",
          width: uiHelper.getAppTitleImgwidht(),
          height: uiHelper.getAppTitleImgHeight(),
          fit: BoxFit.fitWidth,
        ),
      )
    ]);
  }
}
