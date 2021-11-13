import 'package:flutter/material.dart';
import 'package:islami/quran/quran_data.dart';
import 'package:islami/quran/quran_item.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset('assets/images/quran_logo.png'),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 2,color: Color(0xffb6925f),),
                            top: BorderSide(width: 2,color: Color(0xffb6925f),),
                            bottom: BorderSide(width: 2,color: Color(0xffb6925f),),
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
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 2,color: Color(0xffb6925f),),
                              bottom: BorderSide(width: 2,color: Color(0xffb6925f),),
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'اسم السورة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => VerticalDivider(thickness: 2,
                          color: Color(0xffb6925f)
                      ),
                      itemCount: QuranData.quran_list.length,
                      itemBuilder: (context,index){
                        return QuranItem(index, QuranData.quran_list[index]);
                      }
                  ),
                )
              ],
            ),

          ),
        ),


      ],
    );
  }
}
