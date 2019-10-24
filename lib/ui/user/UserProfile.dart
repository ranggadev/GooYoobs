import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyColor.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/common/MyHelper.dart';
import 'package:gooyoobs/common/MyString.dart';
import 'package:gooyoobs/master_layout/MyNetworkImage.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {

    final widgetAvatar = Stack(
      children: <Widget>[
        Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                MyNetworkImage(
                  imageUrl: "https://icon-library.net/images/avatar-icon-images/avatar-icon-images-4.jpg",
                  height: 80.0,
                  width: 80.0,
                  borderRadius: 100.0,
                  shimmerActive: false,
                  fit: BoxFit.cover,
                  zoomableImg: false,
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Card(
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Image.asset(
                      "assets/images/edit.png",
                      height: 30.0,
                    ),
                  ),
                ),
              ],
            )
        )
      ],
    );

    final widgetLevel = Container(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/star.png",
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(width: 8.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Poin",
                    style: TextStyle(
                      fontSize: MyFontSize.medium2,
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Text(
                    "2000",
                    style: TextStyle(
                      fontSize: MyFontSize.medium2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/history.png",
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(width: 8.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Pencapaian",
                    style: TextStyle(
                      fontSize: MyFontSize.medium2,
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Text(
                    "800",
                    style: TextStyle(
                      fontSize: MyFontSize.medium2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    final widgetButton = Container(
      margin: EdgeInsets.symmetric(horizontal: 80.0),
      height: 40.0,
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
              "Level 1",
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

    final widgetEmail = Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.0,
          color: MyHelper.hexToColor(MyColor.grey),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: MyHelper.hexToColor(MyColor.softGrey),
      ),
      child: TextField(
        //controller: _usernameController,
        decoration: InputDecoration(
          hintText: MyString.email,
          hintStyle: TextStyle(
            color: MyHelper.hexToColor(MyColor.greyTextHint),
            fontSize: MyFontSize.medium,
          ),
          icon: Icon(
            Icons.person,
            color: MyHelper.hexToColor(MyColor.grey),
          ),
          border: InputBorder.none,
        ),
      ),
    );

    final widgetNoHP = Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.0,
          color: MyHelper.hexToColor(MyColor.grey),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: MyHelper.hexToColor(MyColor.softGrey),
      ),
      child: TextField(
        //controller: _usernameController,
        decoration: InputDecoration(
          hintText: MyString.phone,
          hintStyle: TextStyle(
            color: MyHelper.hexToColor(MyColor.greyTextHint),
            fontSize: MyFontSize.medium,
          ),
          icon: Icon(
            Icons.phone,
            color: MyHelper.hexToColor(MyColor.grey),
          ),
          border: InputBorder.none,
        ),
      ),
    );

    final widgetPassword = Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.0,
          color: MyHelper.hexToColor(MyColor.grey),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: MyHelper.hexToColor(MyColor.softGrey),
      ),
      child: Stack(
        children: <Widget>[
          TextField(
//            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: MyString.password,
              hintStyle: TextStyle(
                color: MyHelper.hexToColor(MyColor.greyTextHint),
                fontSize: MyFontSize.medium,
              ),
              icon: Icon(
                Icons.lock,
                color: MyHelper.hexToColor(MyColor.grey),
              ),
              border: InputBorder.none,
            ),
          ),
          Positioned(
            top: 9.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.only(left: 8.0),
              color: MyHelper.hexToColor(MyColor.softGrey),
              child: InkWell(
                child: Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
                onTap: () {
//                  setState(() {
//                    _obscureText = !_obscureText;
//                  });
                },
              ),
            ),
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
          "Profil",
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
          widgetAvatar,
          SizedBox(height: 16.0,),
          Text(
            "Rangga Saputra",
            style: TextStyle(
                fontSize: MyFontSize.large,
                fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(indent: 24.0, endIndent: 24.0, height: 48.0,),
          widgetLevel,
          SizedBox(height: 24.0,),
          widgetButton,
          Divider(indent: 24.0, endIndent: 24.0, height: 48.0,),
          widgetEmail,
          widgetNoHP,
          widgetPassword,
        ],
      ),
    );
  }
}
