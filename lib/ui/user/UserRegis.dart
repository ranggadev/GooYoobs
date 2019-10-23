//import 'package:flutter/material.dart';
//import 'package:sekolah_kite_parent/api/ApiService.dart';
//import 'package:sekolah_kite_parent/common/MyColor.dart';
//import 'package:sekolah_kite_parent/common/MyFontSize.dart';
//import 'package:sekolah_kite_parent/common/MyHelper.dart';
//import 'package:sekolah_kite_parent/common/MyString.dart';
//import 'package:sekolah_kite_parent/master_layout/MyLoading.dart';
//import 'package:toast/toast.dart';
//
//class UserRegis extends StatefulWidget {
//  @override
//  _UserRegisState createState() => _UserRegisState();
//}
//
//class _UserRegisState extends State<UserRegis> {
//
//  final _nikController = TextEditingController();
//  final _nameController = TextEditingController();
//  final _emailController = TextEditingController();
//  final _passwordController = TextEditingController();
//
//  bool _obscureText = true;
//  var _loadingRegis = false;
//
//  @override
//  Widget build(BuildContext context) {
//
//    final _widgetTitle = Container(
//      margin: EdgeInsets.only(top: 32.0, bottom: 24.0),
//      child: Center(
//        child: Text(
//          MyString.regis.toUpperCase(),
//          style: TextStyle(
//            fontSize: 40.0,
//            fontWeight: FontWeight.bold,
//            color: MyHelper.hexToColor(MyColor.blackText),
//          ),
//        ),
//      ),
//    );
//
//    final _widgetNik = Container(
//      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
//      child: TextFormField(
//        controller: _nikController,
//        decoration: InputDecoration(
//          labelText: MyString.nik,
//        ),
//      ),
//    );
//
//    final _widgetName = Container(
//      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
//      child: TextFormField(
//        controller: _nameController,
//        decoration: InputDecoration(
//          labelText: MyString.name,
//        ),
//      ),
//    );
//
//    final _widgetEmail = Container(
//      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
//      child: TextFormField(
//        controller: _emailController,
//        decoration: InputDecoration(
//          labelText: MyString.email,
//        ),
//      ),
//    );
//
//    final _widgetPassword = Container(
//      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
//      child: TextFormField(
//        controller: _passwordController,
//        obscureText: _obscureText,
//        decoration: InputDecoration(
//          labelText: MyString.password,
//          suffixIcon: InkWell(
//            child: Icon(
//              _obscureText ? Icons.visibility_off : Icons.visibility,
//              color: _obscureText ? Colors.grey : Colors.deepOrangeAccent,
//            ),
//            onTap: () {
//              setState(() {
//                _obscureText = !_obscureText;
//              });
//            },
//          ),
//        ),
//      ),
//    );
//
//    final _widgetRegis = Container(
//      margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
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
//              _callRegis();
//            },
//            child: Center(
//              child:
//              _loadingRegis ?
//              MyLoading(color: Colors.white,) :
//              Text(
//                MyString.regis,
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
//    return Scaffold(
//      backgroundColor: Colors.white,
//      appBar: AppBar(
//        leading: Container(),
//        backgroundColor: Colors.white,
//        elevation: 0.0,
//        actions: <Widget>[
//          InkWell(
//            onTap: (){
//              Navigator.pop(context);
//            },
//            child: Padding(
//              padding: const EdgeInsets.all(16.0),
//              child: Icon(Icons.close, color: Colors.black,),
//            ),
//          ),
//        ],
//      ),
//      body: ListView(
//        children: <Widget>[
//          _widgetTitle,
//          _widgetNik,
//          _widgetName,
//          _widgetEmail,
//          _widgetPassword,
//          _widgetRegis,
//        ],
//      )
//    );
//  }
//
//  // fungsi panggil API
//  void _callRegis() {
//    if (_nikController.text.isEmpty || _nameController.text.isEmpty || _emailController.text.isEmpty || _passwordController.text.isEmpty) {
//      Toast.show(MyString.dataCouldNotBeEmpty, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//    } else {
//      setState(() {
//        _loadingRegis = true;
//      });
//
//      var params = new Map<String, dynamic>();
//      params["nik"] = _nikController.text;
//      params["name"] = _nameController.text;
//      params["email"] = _emailController.text;
//      params["password"] = _passwordController.text;
//
//      ApiService.userRegis(params).then(
//              (response) async {
//            //normal response
//            setState(() {
//              _loadingRegis = false;
//
//              if (response.status == "success") {
//                Navigator.pop(context);
//                Toast.show(response.message, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//              } else {
//                Toast.show(response.message, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//              }
//            });
//          }, onError: (error) {
//        //error response
//        setState(() {
//          print("rangga : " + error.toString());
//
//          Toast.show(MyString.thereIsProblem, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
//        });
//      });
//    }
//  }
//}