import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0, index = 0;
  static const List tasbeh = [
    "سبحان الله",
    "الحمدلله",
    "لا إله إلا الله",
    "الله اكبر",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40).add(EdgeInsets.only(top: 20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(
          child: Column(
            children: [
              RotationTransition(
                  turns: new AlwaysStoppedAnimation(counter / 360),
                  child: Image.asset(
                    'assets/images/body of seb7a.png',
                    height: MediaQuery.of(context).size.height * 0.2,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'عدد التسبيحات',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff4f493c),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffc7b295)),
                padding: EdgeInsets.all(15),
                child: Text(
                  counter.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xffb6925f)),
                  child: TextButton(
                    onPressed: () {
                      counter++;
                      if (counter == 34) {
                        index++;
                        counter = 0;
                        if (index == tasbeh.length - 1) index = 0;
                      }
                      setState(() {});
                    },
                    child: Text(
                      '${tasbeh[index]}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
