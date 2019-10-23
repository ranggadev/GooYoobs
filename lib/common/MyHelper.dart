import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class MyHelper {

  //--- Common Helpers ---

  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static String formatRupiah(int price) {
    if (price == 0) {
      return "Tidak ada data";
    }

    final oCcy = new NumberFormat("#,##0", "en_US");

    final f = oCcy.format(price);

    return "Rp. " + f.toString();
  }

  static int returnToInt(var input) {
    int result = 0;

    if (input is int) {
      result = input;
    } else if (input is double) {
      result = (.5 * input).round();
    } else if (input is String) {
      result = 0;
    } else if (input == null) {
      result = 0;
    } else {
      result = 0;
    }

    return result;
  }

  static double returnToDouble(var input) {
    double result = 0;

    if (input is int) {
      result = input.toDouble();
    } else if (input is double) {
      result = input;
    } else if (input is String) {
      result = 0;
    } else if (input == null) {
      result = 0;
    } else {
      result = 0;
    }

    return result;
  }

  static String returnToString(var input) {
    String result = "";

    if (input is int) {
      result = input.toString();
    } else if (input is double) {
      result = input.toString();
    } else if (input is String) {
      result = input.toString();
    } else if (input == null) {
      result = "-";
    } else {
      result = "-";
    }

    return result;
  }

  static String formatDate(String date) {
    final f = DateFormat("dd MMM yyyy (hh:mm:ss)").format(DateTime.parse(date));
    return f.toString();
  }

  static String formatShortDate(String date) {
    final f = DateFormat("dd MMM yyyy").format(DateTime.parse(date));
    return f.toString();
  }

  static toast(BuildContext context, String message, int gravity) {
   gravity == 1 ? Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity: Toast.TOP) :
   gravity == 2 ? Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER) :
   Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
 }

  static dialog(BuildContext context, String title, String message, String y, String n, void yes(), void no()) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: new Text(n),
              onPressed: () {
                no();
              },
            ),
            FlatButton(
              color: Colors.deepOrange,
              child: new Text(y, style: TextStyle(color: Colors.white),),
              onPressed: () {
                yes();
              },
            ),
          ],
        );
      },
    );
  }


  //--- Others Helper ---

  static setPref(String key, var value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);

    print("rangga : set pref $value");
  }

  // --- How to use Future get pref : ---
  // MyHelper.getPref(MyConstanta.token).then((result){
  //  print("pref : " + result);
  //  write code here...
  // });
  static Future<String> getPref(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("rangga : get pref");
    return prefs.getString(key);
  }

  static deleteAllPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();

    print("rangga : delete all pref");
  }

  static removeAnPref(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);

    print("rangga : remove an pref");
  }
}