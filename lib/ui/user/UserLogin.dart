import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyColor.dart';
import 'package:gooyoobs/common/MyFontSize.dart';
import 'package:gooyoobs/common/MyHelper.dart';
import 'package:gooyoobs/common/MyString.dart';
import 'package:gooyoobs/ui/MainMenu.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {

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
//            controller: _passwordController,
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainMenu()));
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
        ],
      ),
    );
  }
}



//import 'package:flutter/material.dart';
//import 'package:sekolah_kite_parent/api/ApiService.dart';
//import 'package:sekolah_kite_parent/common/MyColor.dart';
//import 'package:sekolah_kite_parent/common/MyConstanta.dart';
//import 'package:sekolah_kite_parent/common/MyFontSize.dart';
//import 'package:sekolah_kite_parent/common/MyHelper.dart';
//import 'package:sekolah_kite_parent/common/MyString.dart';
//import 'package:sekolah_kite_parent/ui/MainMenu.dart';
//import 'package:sekolah_kite_parent/ui/user/UserRegis.dart';
//import 'package:toast/toast.dart';
//
//class UserLogin extends StatefulWidget {
//  @override
//  _UserLoginState createState() => _UserLoginState();
//}
//
//class _UserLoginState extends State<UserLogin> {
//  final _usernameController = TextEditingController();
//  final _passwordController = TextEditingController();
//
//  bool _obscureText = true;
//  var _loadingLogin = false;
//
//  @override
//  void initState() {
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final _widgetTitle = Container(
//      margin: EdgeInsets.only(top: 56.0, bottom: 24.0),
//      child: Center(
//        child: Text(
//          MyString.enter.toUpperCase(),
//          style: TextStyle(
//            fontSize: 40.0,
//            fontWeight: FontWeight.bold,
//            color: MyHelper.hexToColor(MyColor.blackText),
//          ),
//        ),
//      ),
//    );
//
//    final _widgetEmail = Container(
//      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
//      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
//      decoration: BoxDecoration(
//        border: Border.all(
//          width: 0.0,
//          color: MyHelper.hexToColor(MyColor.grey),
//        ),
//        borderRadius: BorderRadius.all(
//          Radius.circular(30.0),
//        ),
//        color: MyHelper.hexToColor(MyColor.softGrey),
//      ),
//      child: TextField(
//        controller: _usernameController,
//        decoration: InputDecoration(
//          hintText: MyString.email,
//          hintStyle: TextStyle(
//            color: MyHelper.hexToColor(MyColor.greyTextHint),
//            fontSize: MyFontSize.medium,
//          ),
//          icon: Icon(
//            Icons.person,
//            color: MyHelper.hexToColor(MyColor.grey),
//          ),
//          border: InputBorder.none,
//        ),
//      ),
//    );
//
//    final _widgetPassword = Container(
//      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
//      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
//      decoration: BoxDecoration(
//        border: Border.all(
//          width: 0.0,
//          color: MyHelper.hexToColor(MyColor.grey),
//        ),
//        borderRadius: BorderRadius.all(
//          Radius.circular(30.0),
//        ),
//        color: MyHelper.hexToColor(MyColor.softGrey),
//      ),
//      child: Stack(
//        children: <Widget>[
//          TextField(
//            controller: _passwordController,
//            obscureText: _obscureText,
//            decoration: InputDecoration(
//              hintText: MyString.password,
//              hintStyle: TextStyle(
//                color: MyHelper.hexToColor(MyColor.greyTextHint),
//                fontSize: MyFontSize.medium,
//              ),
//              icon: Icon(
//                Icons.lock,
//                color: MyHelper.hexToColor(MyColor.grey),
//              ),
//              border: InputBorder.none,
//            ),
//          ),
//          Positioned(
//            top: 9.0,
//            right: 0.0,
//            child: Container(
//              padding: EdgeInsets.only(left: 8.0),
//              color: MyHelper.hexToColor(MyColor.softGrey),
//              child: InkWell(
//                child: Icon(
//                  _obscureText ? Icons.visibility_off : Icons.visibility,
//                  color: _obscureText ? Colors.grey : Colors.deepOrangeAccent,
//                ),
//                onTap: () {
//                  setState(() {
//                    _obscureText = !_obscureText;
//                  });
//                },
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//
//    final _widgetLogin = Container(
//      margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 40.0),
//      height: 56.0,
//      decoration: BoxDecoration(
//        gradient: LinearGradient(
//          colors: <Color>[
//            MyHelper.hexToColor(MyColor.orange),
//            MyHelper.hexToColor(MyColor.orange),
//            MyHelper.hexToColor(MyColor.softOrange),
//          ],
//        ),
//        borderRadius: BorderRadius.all(
//          Radius.circular(30.0),
//        ),
//      ),
//      child: Material(
//        color: Colors.transparent,
//        child: InkWell(
//            onTap: () {
//              _callLogin();
//            },
//            child: Center(
//              child: _loadingLogin
//                  ? Container(
//                height: 20.0,
//                width: 20.0,
//                child: CircularProgressIndicator(
//                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                ),
//              )
//                  : Text(
//                MyString.enter,
//                style: TextStyle(
//                  fontSize: MyFontSize.medium,
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//            )),
//      ),
//    );
//
//    final _widgetFooter = Container(
//      margin: EdgeInsets.symmetric(vertical: 16.0),
//      child: InkWell(
//        onTap: () {
//          Navigator.push(context, MaterialPageRoute(builder: (contex) => UserRegis()));
//        },
//        child: RichText(
//          textAlign: TextAlign.center,
//          text: TextSpan(
//            text: MyString.notRegistered,
//            style: TextStyle(
//              color: MyHelper.hexToColor(MyColor.blackText),
//              fontSize: MyFontSize.medium,
//            ),
//            children: <TextSpan>[
//              TextSpan(text: '\n'),
//              TextSpan(text: MyString.regisHere),
//              TextSpan(text: ' '),
//              TextSpan(
//                text: MyString.regis.toUpperCase(),
//                style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  color: MyHelper.hexToColor(MyColor.orange),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//
//    return Scaffold(
//      backgroundColor: Colors.white,
//      appBar: AppBar(
//        leading: Container(),
//        backgroundColor: Colors.white,
//        elevation: 0.0,
//      ),
//      body: ListView(
//        children: <Widget>[
//          _widgetTitle,
//          _widgetEmail,
//          _widgetPassword,
//          _widgetLogin,
//          _widgetFooter,
//        ],
//      ),
//    );
//  }
//
//  // fungsi panggil API
//  void _callLogin() {
//    if (_usernameController.text.isEmpty || _passwordController.text.isEmpty) {
//      Toast.show(MyString.dataCouldNotBeEmpty, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//    } else {
//      print("rangga : start request");
//
//      setState(() {
//        _loadingLogin = true;
//      });
//
//      var params = new Map<String, dynamic>();
//      params["username"] = _usernameController.text;
//      params["password"] = _passwordController.text;
//
//      ApiService.userLogin(params).then(
//              (response) async {
//            //normal response
//            setState(() {
//              _loadingLogin = false;
//              print("rangga : " + response.status);
//
//              if (response.status == "success") {
//                MyHelper.setPref(MyConstanta.token, "Bearer " + response.data.token.toString()); //set bearer to pref
//                Toast.show(response.message, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//
//                Navigator.pop(context);
//                Navigator.pushReplacement(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) => MainMenu(),
//                    ));
//              } else {
//                Toast.show(MyString.incorrectUserPass, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//              }
//            });
//          }, onError: (error) {
//        //error response
//        setState(() {
//          _loadingLogin = false;
//          print("rangga : " + error.toString());
//
//          Toast.show(MyString.thereIsProblem, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//        });
//      });
//    }
//  }
//}