import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_details.dart';

class HadethItem extends StatelessWidget {
  late int index;
  late String hadethName;

  HadethItem(this.index, this.hadethName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.route_name,
            arguments: HadethData(index, hadethName));
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Text(
            hadethName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
