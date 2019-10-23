import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/master_layout/MyNetworkImage.dart';

class Kosakata extends StatefulWidget {
  @override
  _KosakataState createState() => _KosakataState();
}

class _KosakataState extends State<Kosakata> {

  Widget widgetDrawing() {
    return Container(
      height: 200.0,
      margin: EdgeInsets.only(left: 24.0, right: 24.0),
      width: double.infinity,
      color: Colors.grey.withOpacity(.2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Gambar disini"),
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
                      "Menggambar Aksara",
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
                      "Gambar asara dibawah ini pada kolom yang sudah ditentukan",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: MyFontSize.large
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MyNetworkImage(
                      width: double.infinity,
                      imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Redjang_script_sample.svg/440px-Redjang_script_sample.svg.png",
                      zoomableImg: false,
                      shimmerActive: false,
                      fit: BoxFit.fitWidth,
                    )
                  ),
                  widgetDrawing(),
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
