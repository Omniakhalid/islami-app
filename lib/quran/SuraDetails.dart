import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends StatefulWidget {
  static const String route_name = "SuraDetails";

  @override
  _SuraDetailsState createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraData;
    if(ayat.isEmpty){
    load_sura_details(args.suraIndex);}
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            systemOverlayStyle:
            SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
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

            child: ayat.isEmpty
                ? Center(child: CircularProgressIndicator(color: Color(0xffb6925f)),)
                : Column(
                  children: [
                    Container(padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2,color: Colors.black),
                          ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${args.suraName}',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
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
                                  ayat[index],
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(fontSize: 18),
                                  //textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                          itemCount: ayat.length,
                        ),
                    ),
                  ],
                ),

          ),
        ));
  }

  void load_sura_details(int index) async {
    String file_content =
        await rootBundle.loadString('assets/Quran_files/${index + 1}.txt');
    List<String> verses = file_content.split('\n');
    this.ayat = verses;
    setState(() {});
  }
}

class SuraData {
  String suraName;
  int suraIndex;
  SuraData(this.suraIndex, this.suraName);
}