import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/radio_img.png',
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'إذاعة القرآن الكريم',
              style: TextStyle(fontSize: 25, color: Color(0xff4f493c)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                color: Color(0xffb6925f),
                size: 34.0,
              ),
              Icon(
                Icons.play_arrow,
                color: Color(0xffb6925f),
                size: 46.0,
              ),
              Icon(
                Icons.skip_next,
                color: Color(0xffb6925f),
                size: 34.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
