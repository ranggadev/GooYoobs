import 'package:flutter/material.dart';

class MyBreadcrumb extends StatelessWidget {

  final labelMenu;

  const MyBreadcrumb({Key key, this.labelMenu = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(8.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Center(
              child: Text(
                labelMenu,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        )
    );
  }
}
