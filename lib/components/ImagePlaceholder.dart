import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  final String radiusDirection;
  const ImagePlaceholder({Key key, this.radiusDirection}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return radiusDirection == "L"
        ? Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage("https://unsplash.it/100/100/?random"),
              ),
            ),
          )
        : radiusDirection == "R"
            ? Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage("https://unsplash.it/100/100/?random"),
                  ),
                ),
              )
            : Container(
                width: 76.0,
                height: 76.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage("https://unsplash.it/80/80/?random"),
                  ),
                ),
              );
  }
}
