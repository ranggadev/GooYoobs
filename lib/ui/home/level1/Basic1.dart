import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/common/MyHelper.dart';
import 'package:gooyoobs/common/MyStore.dart';
import 'package:gooyoobs/master_layout/MyNetworkImage.dart';

class Basic1 extends StatefulWidget {
  @override
  _Basic1State createState() => _Basic1State();
}

class _Basic1State extends State<Basic1> {
  
  List<_FoodModel> _foodModel = [
    _FoodModel(
        "https://moondoggiesmusic.com/wp-content/uploads/2019/03/Getuk-Goreng.jpg",
        "Gemang Goreng",
        "Getuk Goreng",
        "Perkedel Lalap",
        "Lempeng Goreng",
        "Getuk Goreng",
        ""
    ),
    _FoodModel(
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1541401264/yp7agbuwc23iaxevbvd1.jpg",
        "Nasi Gandul",
        "Nasi Kuah",
        "Nasi Tenggeng",
        "Nasi Buli",
        "Nasi Gandul",
        ""
    ),
    _FoodModel(
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1541401599/vt5ukjiyhw0qh4kvbted.jpg",
        "Ongklok",
        "Mangut Beong",
        "Grombyang",
        "Brekecek",
        "Brekecek",
        ""
    ),
  ];

  int soalIndex = 0;

  Future<void> nextPage() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lanjut ke bagian selanjutnya'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Anda mendapatkan : ' + (MyStore.point/20.0).toString() + " Poin"),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Lanjut'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(1);
              },
            ),
          ],
        );
      },
    );
  }

  Widget widgetSelect(String text) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.fromLTRB(24.0, 4.0, 24.0, 4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: () {
          setState(() {
            _foodModel[soalIndex].chooseName = text;
          });
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
          setState(() {
            if (_foodModel[soalIndex].chooseName == "") {
              MyHelper.toast(context, "Jawaban tidak boleh kosong", 2);
            } else {

              if (_foodModel[soalIndex].chooseName == _foodModel[soalIndex].rightName) {
                MyHelper.toast(context, "Jawabanmu Benar!", 2);
                MyStore.point = MyStore.point + 20.0;
              } else {
                MyHelper.toast(context, "Jawabanmu Salah!", 2);
              }
              if (soalIndex < _foodModel.length-1) {
                soalIndex++;
              } else {
                nextPage();
              }
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Lanjut [" + (soalIndex+1).toString() + "/" + _foodModel.length.toString() + "]",
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
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 16.0, left: 16.0),
                  child: Image.asset("assets/images/star.png"),
                ),
                Expanded(
                  child:
                  Stack(
                    children: <Widget>[
                      Card(
                        elevation: 0.0,
                        margin: EdgeInsets.all(0.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        child: Container(
                          height: 20.0,
                          width: 180.0,
                          color: Colors.grey,
                        ),
                      ),
                      Card(
                        elevation: 0.0,
                        margin: EdgeInsets.all(0.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        child: Container(
                          height: 20.0,
                          width: MyStore.point,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(icon: Icon(Icons.close), onPressed: (){

                })
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: 24.0),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "DASAR 1",
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
                      "Apakah nama makanan dibawah ini?",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: MyFontSize.large
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: MyNetworkImage(
                      imageUrl: _foodModel[soalIndex].imgUrl,
                      shimmerActive: false,
                      fit: BoxFit.cover,
                      height: 140.0,
                      zoomableImg: false,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    //child: Text(_foodModel[soalIndex].chooseName),
                    child: Text("Pilihan Anda"),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(_foodModel[soalIndex].chooseName, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Divider(indent: 24.0, endIndent: 24.0),
                  SizedBox(height: 16.0,),
                  widgetSelect(_foodModel[soalIndex].name1),
                  widgetSelect(_foodModel[soalIndex].name2),
                  widgetSelect(_foodModel[soalIndex].name3),
                  widgetSelect(_foodModel[soalIndex].name4),
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

class _FoodModel {
  String imgUrl;
  String name1;
  String name2;
  String name3;
  String name4;
  String rightName;
  String chooseName;

  _FoodModel(this.imgUrl, this.name1, this.name2, this.name3, this.name4,
      this.rightName, this.chooseName);
}