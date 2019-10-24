import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyFontSize.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {

    final widgetButton = Container(
      margin: EdgeInsets.symmetric(horizontal: 32.0),
      height: 56.0,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainMenu()));
            },
            child: Center(
              child: Text(
                "GooYoobs Premium",
                style: TextStyle(
                  fontSize: MyFontSize.medium,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ),
      ),
    );

    final widgetTarget = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 24.0,),
          Text(
            "Pencapaian Target",
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24.0,),
          Row(
            children: <Widget>[
              Image.asset(
                "assets/images/fire.png",
                height: 60.0,
              ),
              SizedBox(width: 16.0,),
              Expanded(
                child: LinearProgressIndicator(
                  backgroundColor: Colors.red,
                  value: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0,),
          Row(
            children: <Widget>[
              Image.asset(
                "assets/images/tickets.png",
                height: 60.0,
              ),
              SizedBox(width: 16.0,),
              Expanded(
                child: LinearProgressIndicator(
                  backgroundColor: Colors.red,
                  value: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "GooYoobs Premium",
          style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.green
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(0.0),
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "GooYoobs Premium",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 16.0,),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/rocket.png",
                        width: 80.0,
                      ),
                      SizedBox(width: 16.0,),
                      Expanded(
                        child: Text(
                          "Dapatkan banyak keuntungan belajar secara offline, tanpa iklan dan masuk ke destinasi wisata diseluruh Indonesia.",
                          style: TextStyle(
//                            fontSize: 18.0,
//                            fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0,),
                  widgetButton,
                ],
              ),
            ),
          ),
          widgetTarget,
        ],
      ),
    );
  }
}
