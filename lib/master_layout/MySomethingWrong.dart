import 'package:flutter/material.dart';

class MySomethingWrong extends StatelessWidget {

  final double height, width;

  const MySomethingWrong({Key key, this.height = double.infinity, this.width = double.infinity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Center(
        child: Image.asset(
          "assets/gif/gif_sometring_wrong.gif",
          width: 220.0,
          height: 170.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
