import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';

class Hear extends StatefulWidget {
  @override
  _HearState createState() => _HearState();
}

class _HearState extends State<Hear> {

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
                      "Mendengar Bahasa Daerah",
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
                      "Tekan gambar main, dengarkan suara dengan seksama dan tuliskan kata atau kalimat sesuai dengan kata atau kalimat yang terdengar dikolom di bawah",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: MyFontSize.large
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32.0,),
                  IconButton(
                      icon: Icon(Icons.play_arrow, color: Colors.green, size: 50.0,),
                      onPressed: (){

                      }
                  ),
                  SizedBox(height: 32.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextFormField(
                      //controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Tuliskan kata atau kalimat yang kamu dengar disini',
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                  ),
                  SizedBox(height: 56.0,),
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
