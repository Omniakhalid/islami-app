import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/hadeth_tab.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio/radio_tab.dart';
import 'package:islami/sebha/sebha_tab.dart';

class HomePage extends StatefulWidget {
  static const String route_name = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentFragmentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.png'))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
          title: Text('إسلامي',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,

        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffb6925f),
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          iconSize: 34,
          selectedLabelStyle: TextStyle(fontSize: 16),
          currentIndex: currentFragmentIndex,
          onTap: (index){
            setState(() {
              currentFragmentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(label:'راديو', icon: ImageIcon(AssetImage('assets/images/ic_radio.png'))),
            BottomNavigationBarItem(label:'تسبيح', icon: ImageIcon(AssetImage('assets/images/ic_sebha.png'))),
            BottomNavigationBarItem(label:'الحديث',icon: ImageIcon(AssetImage('assets/images/ic_book.png'))),
            BottomNavigationBarItem(label:'القرآن',icon: ImageIcon(AssetImage('assets/images/ic_moshaf.png')))

        ],
        ),
        body: getCurrentFragment(

        ),
      ),
    );
  }
  Widget getCurrentFragment(){
    if(currentFragmentIndex == 0){
      return RadioTab();
    }
    else if(currentFragmentIndex == 1){
      return SebhaTab();
    }
    else if(currentFragmentIndex == 2){
      return HadethTab();
    }
    else{
      return QuranTab();
    }
  }
}
