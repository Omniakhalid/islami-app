import 'package:flutter/material.dart';

class SuraDetails extends StatelessWidget {
  static const String route_name = "SuraDetails";
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png'))
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('إسلامي',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          body: Container(

          ),
        ));
  }
}
