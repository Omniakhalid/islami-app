import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethDetails extends StatefulWidget {
  static const String route_name = "HadethDetails";

  @override
  _HadethDetailsState createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> a7adeth = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    load_hadeth_details(args.hadethIndex);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:[
                    Colors.white.withOpacity(0.7),
                    Colors.white,
                  ]
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20).add(EdgeInsets.only(bottom: 10)),
            child: a7adeth.isEmpty
                ? Center(
              child: CircularProgressIndicator(color: Color(0xffb6925f)),
            )
                : Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${args.hadethName}',
                        style:
                        TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (buildContext, index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            a7adeth[index],
                            style: TextStyle(fontSize: 18),
                            textDirection: TextDirection.rtl,
                            //textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                    itemCount: a7adeth.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void load_hadeth_details(int index) async {
    String file_content =
    await rootBundle.loadString('assets/hadeth_files/h${index + 1}.txt');
    List<String> verses = file_content.split('\n');
    verses.removeAt(0);
    this.a7adeth = verses;
    setState(() {});
  }
}

class HadethData {
  String hadethName;
  int hadethIndex;
  HadethData(this.hadethIndex, this.hadethName);
}
