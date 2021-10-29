import 'dart:math';

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0; String tasbeh = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Spacer(),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              RotationTransition(
                  turns: new AlwaysStoppedAnimation(counter / 360),
                  child: Image.asset(
                    'assets/images/body of seb7a.png',
                    height: 160,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'عدد التسبيحات',
                style: TextStyle(fontSize: 25, color: Color(0xff4f493c)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffc7b295)),
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                child: Text(
                  counter.toString(),
                  style: TextStyle(fontSize: 25, color: Color(0xff000000)),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xffb6925f)),
                  margin: EdgeInsets.only(top: 30),
                  child: TextButton(
                    onPressed: () {
                      counter++;
                      if(counter==30)
                        {
                          counter=0;
                          tasbeh = 'الحمدلله';
                        }
                      setState(() {});
                    },
                    child: Text('$tasbeh',
                      style: TextStyle(fontSize: 25, color: Color(0xffffffff)),
                    ),
                  )),
            ],
          ),
        ),
        Expanded(child: Container())
      ]),
    );
  }
}
