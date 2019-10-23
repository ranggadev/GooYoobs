import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gooyoobs/master_layout/MyShimmer.dart';
import 'package:gooyoobs/master_layout/MyZoomableImg.dart';

class MyNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height, width, borderRadius;
  final BoxFit fit;
  final bool shimmerActive, zoomableImg;
  final String heroTag;
  final int heroTagIndex;

  const MyNetworkImage(
      {Key key,
      this.imageUrl,
      this.height,
      this.width,
      this.borderRadius = 0.0,
      this.fit = BoxFit.cover,
      this.shimmerActive = true,
      this.zoomableImg = true,
      this.heroTag = "a",
      this.heroTagIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetWithZoom = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: () {
          if (shimmerActive == false) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyZoomableImg(
                  imgUrl: imageUrl,
                  heroTag: heroTag,
                  heroTagIndex: heroTagIndex,
                ),
              ),
            );
          }
        },
        child: Hero(
          tag: "$heroTag-$heroTagIndex",
          child: shimmerActive
              ? MyShimmer(
                  height: height,
                  width: width,
                )
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  placeholder: (context, url) {
                    return MyShimmer(
                      height: height,
                      width: width,
                    );
                  },
                  errorWidget: (context, url, error) {
                    return Container(
                      height: height,
                      width: width,
                      child: Image.asset(
                        "assets/images/placeholder.jpg",
                        height: height,
                        width: width,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  height: height,
                  width: width,
                  fit: fit,
                ),
        ),
      ),
    );

    final widgetWithoutZoom = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: shimmerActive
          ? MyShimmer(
              height: height,
              width: width,
            )
          : CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) {
                return MyShimmer(
                  height: height,
                  width: width,
                );
              },
              errorWidget: (context, url, error) {
                return Container(
                  height: height,
                  width: width,
                  child: Image.asset(
                    "assets/images/placeholder.jpg",
                    height: height,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                );
              },
              height: height,
              width: width,
              fit: fit,
            ),
    );

    return zoomableImg ? widgetWithZoom : widgetWithoutZoom;
  }
}
