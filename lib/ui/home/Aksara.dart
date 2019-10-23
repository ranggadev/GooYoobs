import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';

class Aksara extends StatefulWidget {
  @override
  _AksaraState createState() => _AksaraState();
}

class _AksaraState extends State<Aksara> {

  Widget widgetSelect(String text) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: () {

        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: MyFontSize.large
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget widgetCek() {
    return Card(
      color: Colors.lightGreen,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: () {

        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Cek",
            style: TextStyle(
              fontSize: MyFontSize.large,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(height: 20.0, width: 20.0, color: Colors.yellow, margin: EdgeInsets.only(right: 16.0, left: 16.0),),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(0.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey.withOpacity(.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    child: Stack(
                      children: <Widget>[
                        Card(
                          margin: EdgeInsets.all(0.0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                IconButton(icon: Icon(Icons.close), onPressed: (){

                })
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Pilih terjemahan yang benar",
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MyFontSize.large2
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Pilih terjemahan dalam bahasa Indonesia aksara dibawah ini",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: MyFontSize.large
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "77",
                      softWrap: true,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MyFontSize.large2
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  widgetSelect("Ka"),
                  widgetSelect("Na"),
                  widgetSelect("Da"),
                  widgetSelect("Ku"),
                  SizedBox(height: 32.0,),
                  widgetCek(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
