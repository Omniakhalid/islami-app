import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_details.dart';
import 'package:islami/quran/SuraDetails.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      routes: {
        HomePage.route_name: (buildContext)=>HomePage(),
        SuraDetails.route_name: (buildContext)=>SuraDetails(),
        HadethDetails.route_name: (buildContext)=>HadethDetails(),
      },
      initialRoute: HomePage.route_name,
      //initialRoute: ,
    );
  }
}