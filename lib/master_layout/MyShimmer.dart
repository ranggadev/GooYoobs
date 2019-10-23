import 'package:flutter/material.dart';
import 'package:gooyoobs/common/MyHelper.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmer extends StatelessWidget {
  final double height,
      width,
      borderRadius,
      marginLeft,
      marginTop,
      marginRight,
      marginBottom;

  const MyShimmer(
      {Key key,
      this.height = 16.0,
      this.width = 96.0,
      this.borderRadius = 4.0,
      this.marginLeft = 0.0,
      this.marginTop = 0.0,
      this.marginRight = 0.0,
      this.marginBottom = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      child: Shimmer.fromColors(
          baseColor: MyHelper.hexToColor("#e1e1e1"),
          highlightColor: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(
              height: height,
              width: width,
              color: Colors.grey,
            ),
          )),
    );
  }
}
