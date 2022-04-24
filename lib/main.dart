// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/cart_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/logein_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utlis/routs.dart';
import 'package:myapp/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouts.homeRout,
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.homeRout:(context) => HomePage(),
        MyRouts.loginRout: (context) => LoginPage(),
        MyRouts.CartRouts: (context) => CartPage(),
      },
    );
  }
}
