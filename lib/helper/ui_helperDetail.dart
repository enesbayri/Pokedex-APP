
// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class uiHelperDetail{
  static TextStyle getPokeName(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return TextStyle(fontSize: 30.h,color: Colors.white);
    }
    else{
      return TextStyle(fontSize:18.w,color: Colors.white);
    }
  }

  static TextStyle getCardKey(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return TextStyle(fontSize: 24.h,fontWeight: FontWeight.bold);
    }
    else{
      return TextStyle(fontSize: 13.w,fontWeight: FontWeight.bold);
    }
  }
  static TextStyle getCardValue(){
    if(ScreenUtil().orientation==Orientation.portrait){
      return TextStyle(fontSize: 16.h);
    }
    else{
      return TextStyle(fontSize:12.w);
    }
  }
}