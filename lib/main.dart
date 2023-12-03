import 'package:flutter/material.dart';
import 'package:flutter_application_6/sayfalar/anaSayfa.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder:(context, child) => MaterialApp(
        theme: ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        title: "POKEDEX",
        debugShowCheckedModeBanner: false,
        home: const AnaSayfa(),
      ),
    );
  }
}