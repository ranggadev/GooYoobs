import 'package:flutter/material.dart';

class MyLoading extends StatelessWidget {

  final double height, width;
  final Color color;

  const MyLoading({Key key, this.height = 20.0, this.width = 20.0, this.color = Colors.deepOrange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: height,
          width: width,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        )
    );
  }
}