import 'package:flutter/material.dart';
import 'package:islami/quran/SuraDetails.dart';

class QuranItem extends StatelessWidget {
  int index;String suraName;

  QuranItem(this.index, this.suraName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.route_name);
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 2,color: Color(0xffb6925f),),
                  )
              ),
              alignment: Alignment.center,
              child: Text(
                'عدد الايات',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(suraName,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
