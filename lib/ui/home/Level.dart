import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/master_layout/MyNetworkImage.dart';
import 'package:gooyoobs/ui/home/Aksara.dart';
import 'package:gooyoobs/ui/home/Hear.dart';
import 'package:gooyoobs/ui/home/Kosakata.dart';
import 'package:gooyoobs/ui/home/Talk.dart';
import 'package:gooyoobs/ui/home/Test.dart';
import 'package:gooyoobs/ui/home/level1/Basic1.dart';
import 'package:gooyoobs/ui/home/level1/Basic2.dart';
import 'package:gooyoobs/ui/home/level1/Basic3.dart';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {

    int sectionIndex = 0;

    Widget widgetCard(String title, bool active) {
      return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.only(left: 4.0, bottom: 16.0, top: 16.0, right: 4.0),
        color: active ? Colors.green : Colors.grey,
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.green,),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          title: Text(
            "Bahasa Jawa",
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.green
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(12.0),
          children: <Widget>[
            widgetCard("Level 1", true),
            widgetMateri(
              "https://img.freepik.com/free-vector/banana-white-background_1308-21517.jpg",
              (sectionIndex == 0) ? Colors.green : Colors.grey.withOpacity(.3),
              "DASAR 1",
              "Nama-nama makanan",
              true,
                () async {
                  int result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Basic1()));
                  setState(() {
                    sectionIndex = result;
                    print(result);
                  });
                }
            ),
            widgetMateri(
              "https://previews.123rf.com/images/red33/red331202/red33120200071/12152339-angry-mean-leopard-animal-vector-illustration-art.jpg",
              (sectionIndex == 1) ? Colors.green : Colors.grey.withOpacity(.3),
              "DASAR 2",
              "Nama-nama hewan",
              true,
                    () async {
                  int result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Basic2()));
                  setState(() {
                    sectionIndex = result;
                    print(result);
                  });
                }
            ),
            widgetMateri(
              "https://img.freepik.com/free-vector/illustration-headphones-icon_53876-5571.jpg?size=338&ext=jpg",
              (sectionIndex == 2) ? Colors.green : Colors.grey.withOpacity(.3),
              "DASAR 3",
              "Nama-nama permainan",
              false,
                ()  async {
                  int result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Basic3()));
                  setState(() {
                    sectionIndex = result;
                    print(result);
                  });
                }
            ),
            widgetCard("Level 2", false),
            widgetMateri(
                "https://img.freepik.com/free-vector/banana-white-background_1308-21517.jpg",
                Colors.grey.withOpacity(.3),
                "DASAR 1",
                "Nama-nama makanan 2",
                true,
                    () {
                }
            ),
            widgetMateri(
                "https://previews.123rf.com/images/red33/red331202/red33120200071/12152339-angry-mean-leopard-animal-vector-illustration-art.jpg",
                Colors.grey.withOpacity(.3),
                "DASAR 2",
                "Nama-nama hewan 2",
                true,
                    () {

                }
            ),
            widgetMateri(
                "https://img.freepik.com/free-vector/illustration-headphones-icon_53876-5571.jpg?size=338&ext=jpg",
                Colors.grey.withOpacity(.3),
                "DASAR 3",
                "Nama-nama permainan 2",
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
