import 'package:flutter/material.dart';
import 'package:islami/quran/SuraDetails.dart';
import 'package:islami/quran/quran_data.dart';

class QuranItem extends StatelessWidget {
  int index;String suraName;
  QuranItem(this.index, this.suraName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.route_name,
        arguments: SuraData(index, suraName));
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 2,color: Color(0xffb6925f)),
                  )
              ),
              alignment: Alignment.center,
              child: Text(
                QuranData.ayat_numbers_list[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
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
