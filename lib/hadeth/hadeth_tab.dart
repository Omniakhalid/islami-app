import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadethItem.dart';

class HadethTab extends StatelessWidget {
  final List hadeth_list = [
    "الحديث الاول",
    "الحديث الثاني",
    "الحديث الثالث",
    "الحديث الرابع",
    "الحديث الخامس",
    "الحديث السادس",
    "الحديث السابع",
    "الحديث الثامن",
    "الحديث التاسع",
    "الحديث العاشر",
    "الحديث الحادي عشر",
    "الحديث الثاني عشر",
    "الحديث الثالث عشر",
    "الحديث الرابع عشر",
    "الحديث الخامس عشر",
    "الحديث السادس عشر",
    "الحديث السابع عشر",
    "الحديث الثامن عشر",
    "الحديث التاسع عشر",
    "الحديث العشرون",
    "الحديث الحادي والعشرون",
    "الحديث الثاني والعشرون",
    "الحديث الثالث والعشرون",
    "الحديث الرابع والعشرون",
    "الحديث الخامس والعشرون",
    "الحديث السادس والعشرون",
    "الحديث السابع والعشرون",
    "الحديث الثامن والعشرون",
    "الحديث التاسع والعشرون",
    "الحديث الثلاثــون",
    "الحديث الواحد والثلاثــون",
    "الحديث الثاني والثلاثــون",
    "الحديث الثالث والثلاثــون",
    "الحديث الرابع والثلاثــون",
    "الحديث الخامس والثلاثــون",
    "الحديث السادس والثلاثــون",
    "الحديث السابع والثلاثــون",
    "الحديث الثامن والثلاثــون",
    "الحديث التاسع والثلاثــون",
    "الحديث الاربعون",
    "الحديث الواحد والاربعون",
    "الحديث الثاني والاربعون",
    "الحديث الثالث والاربعون",
    "الحديث الرابع والاربعون",
    "الحديث الخامس والاربعون",
    "الحديث السادس والاربعون",
    "الحديث السابع والاربعون",
    "الحديث الثامن والاربعون",
    "الحديث التاسع والاربعون",
    "الحديث الخمسون",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/hadeth_logo.png',height: MediaQuery.of(context).size.height * 0.2,),
            ),
            Divider(
              thickness: 2,
              color: Color(0xffb6925f),
            ),
            Center(
              child: Text(
                'الاحاديث',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Divider(
              thickness: 2,
              color: Color(0xffb6925f),
            ),
            Expanded(child: ListView.builder(
                itemCount: hadeth_list.length,
                itemBuilder: (context,index){
                  return HadethItem(index,hadeth_list[index]);
                }
            ))
          ],
        ));
  }
}
