import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MyZoomableImg extends StatelessWidget {

  final String imgUrl, heroTag;
  final int heroTagIndex;

  const MyZoomableImg({Key key, this.imgUrl, this.heroTag, this.heroTagIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Hero(
          tag: "$heroTag-$heroTagIndex",
          child: Container(
            color: Colors.black,
            child: PhotoView(
                imageProvider: NetworkImage(imgUrl)
            ),
          )
      ),
    );
  }
}