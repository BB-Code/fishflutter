import 'package:fishflutter/utils/HexColor.dart';
import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  final String radiusDirection;
  final String bgColor;
  final String labelTitle;
  const ImagePlaceholder(
      {Key key, this.radiusDirection, this.bgColor, this.labelTitle})
      : super(key: key);
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
                child: Stack(fit: StackFit.loose, children: [
                  Positioned(
                    top: 50,
                    left: 4,
                    child: Container(
                        alignment: Alignment.center,
                        height: 20.0,
                        width: 66,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor(bgColor),
                        ),
                        child: Text(
                          labelTitle,
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )),
                  )
                ]));
  }
}
