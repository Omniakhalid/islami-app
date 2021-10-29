import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/radio_img.png',
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'إذاعة القرآن الكريم',
            style: TextStyle(fontSize: 25, color: Color(0xff4f493c)),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous,
                  color: Color(0xffb6925f),
                  size: 34.0,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.play_arrow,
                  color: Color(0xffb6925f),
                  size: 46.0,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.skip_next,
                  color: Color(0xffb6925f),
                  size: 34.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
