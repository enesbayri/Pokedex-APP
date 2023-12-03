
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class uiHelper{
  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };
  static Color getCardColor(type){
    return uiHelper._typeColorMap[type] ?? Colors.green;
  }
  static TextStyle getAppTitle(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return TextStyle(fontSize: 48.h,fontWeight: FontWeight.bold,color: Colors.white);
    }
    else{
      return TextStyle(fontSize: 36.w,fontWeight: FontWeight.bold,color: Colors.white);
    }
  }
  static TextStyle getPokeName(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return TextStyle(fontSize: 24.h,color: Colors.white);
    }
    else{
      return TextStyle(fontSize:18.w,color: Colors.white);
    }
  }

  static TextStyle getChipName(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return  TextStyle(fontSize: 16.h,color: Colors.white);
    }
    else{
      return  TextStyle(fontSize:10.w,color: Colors.white);
    }
  }
  static EdgeInsets getCardinPadding(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return  EdgeInsets.all(8.w);
    }
    else{
      return  EdgeInsets.all(8.h);
    }
  }

  static int getItemCount(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return  2;
    }
    else{
      return  3;
    }
  }
  static double getImgSize(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return  100.w;
    }
    else{
      return  70.w;
    }
  }
  static double getAppTitleImgwidht(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return  120.w;
    }
    else{
      return  90.w;
    }
  }
  static double getAppTitleImgHeight(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return  0.1.sh;
    }
    else{
      return  0.1.sw;
    }
  }

}

