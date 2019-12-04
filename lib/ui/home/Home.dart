import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/common/MyStore.dart';
import 'package:gooyoobs/master_layout/MyNetworkImage.dart';
import 'package:gooyoobs/ui/home/Level.dart';
import 'package:marquee/marquee.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    
    Widget widgetCard(String imgUrl, String title, bool active) {
      return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            children: <Widget>[
              MyNetworkImage(
                imageUrl: imgUrl,
                shimmerActive: false,
                fit: BoxFit.cover,
                height: double.infinity,
                zoomableImg: false,
              ),
              active ? Container() : Container(
                color: Colors.black.withOpacity(.5),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  color: active ? Colors.green : Colors.grey,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (active) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level()));
                  }
                },
              )
            ],
          )
      );
    }
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Hello, " + MyStore.username + "!",
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
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 16.0),
            child: Text(
              "Pilih pelajaran bahasa :",
              style: TextStyle(
                  fontSize: MyFontSize.large,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1,
            ),
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              widgetCard("https://moondoggiesmusic.com/wp-content/uploads/2019/03/Bentuk-Rumah-Adat-Jawa-Tengah-Joglo.jpg", "Bahasa Jawa", true),
              widgetCard("https://budayajawa.id/wp-content/uploads/2018/03/rumah-adat-sunda-300x201.png", "Bahasa Sunda", false),
              widgetCard("https://storage.trubus.id/storage/app/public/posts/t20180810/big_0f08a6704a8e4052bcd30710501f873f91023a85.jpg", "Bahasa Sasak", false),
              widgetCard("https://media.travelingyuk.com/wp-content/uploads/2018/04/Uma-Lengge-kini-beralih-fungsi.jpg", "Bahasa Bima", false),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 16.0, top: 24.0),
            child: Text(
              "Pelajaran terakhirmu :",
              style: TextStyle(
                fontSize: MyFontSize.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: EdgeInsets.only(left: 4.0, bottom: 16.0,),
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
                topRight: Radius.circular(100.0),
                bottomRight: Radius.circular(100.0),
              )
            ),
            child: InkWell(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Level()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Bahasa Jawa > Level 1 > Dasar 1",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
