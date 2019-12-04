import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyColor.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/common/MyHelper.dart';
import 'package:gooyoobs/common/MyStore.dart';
import 'package:gooyoobs/common/MyString.dart';
import 'package:gooyoobs/ui/MainMenu.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscureText = true;
  var _loadingLogin = false;

  @override
  Widget build(BuildContext context) {

    final _widgetEmail = Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
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
        controller: _usernameController,
        decoration: InputDecoration(
          hintText: MyString.username,
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

    final _widgetPassword = Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
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
            controller: _passwordController,
            obscureText: _obscureText,
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
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: _obscureText ? Colors.grey : Colors.deepOrangeAccent,
                ),
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );

    final _widgetLogin = Container(
      margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 40.0),
      height: 56.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Colors.green,
            Colors.lightGreen,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {
              if (_usernameController.text == "" || _passwordController.text == "") {
                MyHelper.toast(context, "Username atau Password tidak boleh kosong", 2);
              } else {
                MyStore.username = _usernameController.text;
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainMenu()));
              }
            },
            child: Center(
              child: _loadingLogin
                  ? Container(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
                  : Text(
                MyString.enter,
                style: TextStyle(
                  fontSize: MyFontSize.medium,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ),
    );

    final _widgetRegis = Container(
      child: FlatButton(
        onPressed: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => UserRegis));
        },
        child: Text(
          "Registrasi",
          style: TextStyle(
            color: Colors.green
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: Image.asset(
              'assets/icon/logo.png',
              height: 100.0,
            ),
          ),
          SizedBox(height: 64.0,),
          _widgetEmail,
          _widgetPassword,
          _widgetLogin,
          _widgetRegis,
        ],
      ),
    );
  }
}