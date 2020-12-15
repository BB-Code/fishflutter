import 'package:fishflutter/components/ImagePlaceholder.dart';
import 'package:fishflutter/utils/HexColor.dart';
import 'package:fishflutter/utils/UISize.dart';
import 'package:flutter/material.dart';

class BlockNav1 extends StatelessWidget {
  const BlockNav1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    return Container(
      padding: EdgeInsets.all(4),
      width: UISize.screenWidth / 1.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: RichText(
              text: TextSpan(
                  text: "玩家",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "  最懂的人最狠的货",
                        style: TextStyle(color: Colors.grey, fontSize: 10))
                  ]),
            ),
          ),
          Row(children: [
            ImagePlaceholder(radiusDirection: "L"),
            SizedBox(
              width: 1,
              height: 12,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            ImagePlaceholder(radiusDirection: "R"),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 4, bottom: 4),
                  child: Text("租房",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold))),
              SizedBox(width: 60),
              Text("借租",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          Row(children: [
            ImagePlaceholder(bgColor: "18CAFE", labelTitle: "免中介费"),
            SizedBox(
              width: 10,
              height: 12,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            ImagePlaceholder(bgColor: "12D4A7", labelTitle: "9.9月包邮"),
          ])
        ]),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            width: 1,
            height: 220,
            child: DecoratedBox(
              decoration: BoxDecoration(color: HexColor("F4F4F4")),
            ),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: RichText(
                text: TextSpan(
                    text: "免费送",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                  TextSpan(
                      text: "  41.9万件宝贝",
                      style: TextStyle(color: Colors.grey, fontSize: 10))
                ])),
          ),
          Row(children: [
            ImagePlaceholder(radiusDirection: "L"),
            SizedBox(
              width: 1,
              height: 12,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            ImagePlaceholder(radiusDirection: "R"),
          ]),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 4, bottom: 4),
                  child: RichText(
                    text: TextSpan(
                        text: "咸鱼优品",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: "  二手正品好货",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10))
                        ]),
                  )),
            ],
          ),
          Row(children: [
            ImagePlaceholder(bgColor: "FF9218", labelTitle: "原装二手"),
            SizedBox(
              width: 10,
              height: 12,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            ImagePlaceholder(bgColor: "1962CE", labelTitle: "库存样机"),
          ])
        ]),
      ]),
    );
  }
}
