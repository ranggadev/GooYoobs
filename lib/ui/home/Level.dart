import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/master_layout/MyNetworkImage.dart';
import 'package:gooyoobs/ui/home/Aksara.dart';
import 'package:gooyoobs/ui/home/Hear.dart';
import 'package:gooyoobs/ui/home/Kosakata.dart';
import 'package:gooyoobs/ui/home/Talk.dart';
import 'package:gooyoobs/ui/home/Test.dart';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {

    Widget widgetCard(String title) {
      return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.only(left: 4.0, bottom: 16.0, top: 16.0, right: 4.0),
        color: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
              topRight: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: MyFontSize.large,
                color: Colors.white
            ),
          ),
        ),
      );
    }

    Widget widgetMateri(String imgUrl, Color color, String title, String subTitle, bool rule, void action()) {
      return InkWell(
        onTap: () {
          action();
        },
        child: Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Card(
                      elevation: 0.0,
                      margin: EdgeInsets.all(0.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)
                      ),
                      color: color,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: MyNetworkImage(
                            imageUrl: imgUrl,
                            shimmerActive: false,
                            fit: BoxFit.cover,
                            height: 60.0,
                            width: 60.0,
                            zoomableImg: false,
                          ),
                        ),
                      )
                  ),
                  rule ? Container(height: 32.0, width: 6.0, color: Colors.grey.withOpacity(.3),) : Container(),
                ],
              ),
              SizedBox(width: 16.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.0,),
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: MyFontSize.medium2,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                      ),
                    ),
                    SizedBox(height: 4.0,),
                    Text(
                      subTitle,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: MyFontSize.medium,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(12.0),
          children: <Widget>[
            widgetCard("Level 1"),
            widgetMateri(
              "https://faroidcs.files.wordpress.com/2012/04/murda.jpg",
              Colors.green,
              "Aksara",
              "Belajar mengenal aksara",
              true,
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Aksara()));
                }
            ),
            widgetMateri(
              "https://img2.pngdownload.id/20181112/cle/kisspng-computer-icons-scalable-vector-graphics-vocabulary-5be94e90d57f39.1424842715420166568745.jpg",
              Colors.grey.withOpacity(.3),
              "Kosakata",
              "Belajar menulis kosakata bahasa daerah",
              true,
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kosakata()));
                }
            ),
            widgetMateri(
              "https://img.freepik.com/free-vector/illustration-headphones-icon_53876-5571.jpg?size=338&ext=jpg",
              Colors.grey.withOpacity(.3),
              "Mendengarkan",
              "Belajar mendengarkan kosakata bahasa daerah",
              true,
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Hear()));
                }
            ),
            widgetMateri(
              "https://img.freepik.com/free-vector/office-workers-talking_23-2147506354.jpg?size=338&ext=jpg",
              Colors.grey.withOpacity(.3),
              "Berbicara",
              "Belajar berbicara dalam bahasa daerah",
              true,
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Talk()));
                }
            ),
            widgetMateri(
              "https://t4.ftcdn.net/jpg/01/23/05/91/240_F_123059126_s5TJUPAFKVwOmJaKPRPjr9V8WHBe9Qtr.jpg",
              Colors.grey.withOpacity(.3),
              "Test",
              "Latihan mengerjakan soal tentang bahasa daerah",
              false,
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test()));
                }
            ),
            widgetCard("Level 2"),
            widgetMateri(
                "https://faroidcs.files.wordpress.com/2012/04/murda.jpg",
                Colors.green,
                "Aksara 2",
                "Belajar mengenal aksara",
                true,
                () {

                }
            ),
            widgetMateri(
                "https://img2.pngdownload.id/20181112/cle/kisspng-computer-icons-scalable-vector-graphics-vocabulary-5be94e90d57f39.1424842715420166568745.jpg",
                Colors.grey.withOpacity(.3),
                "Kosakata 2",
                "Belajar menulis kosakata bahasa daerah",
                true,
                () {

                }
            ),
            widgetMateri(
                "https://img.freepik.com/free-vector/illustration-headphones-icon_53876-5571.jpg?size=338&ext=jpg",
                Colors.grey.withOpacity(.3),
                "Mendengarkan 2",
                "Belajar mendengarkan kosakata bahasa daerah",
                true,
                () {

                }
            ),
            widgetMateri(
                "https://img.freepik.com/free-vector/office-workers-talking_23-2147506354.jpg?size=338&ext=jpg",
                Colors.grey.withOpacity(.3),
                "Berbicara 2",
                "Belajar berbicara dalam bahasa daerah",
                true,
                () {

                }
            ),
            widgetMateri(
                "https://t4.ftcdn.net/jpg/01/23/05/91/240_F_123059126_s5TJUPAFKVwOmJaKPRPjr9V8WHBe9Qtr.jpg",
                Colors.grey.withOpacity(.3),
                "Test 2",
                "Latihan mengerjakan soal tentang bahasa daerah",
                false,
                () {

                }
            ),
          ],
        ),
      ),
    );
  }
}
