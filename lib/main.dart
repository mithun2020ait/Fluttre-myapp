// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/logein_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utlis/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.homeRout:(context) => HomePage(),
        MyRouts.loginRout: (context) => LoginPage(),
      },
    );
  }
}
