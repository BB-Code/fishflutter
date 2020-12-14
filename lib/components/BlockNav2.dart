import 'package:fishflutter/utils/HexColor.dart';
import 'package:fishflutter/utils/UISize.dart';
import 'package:flutter/material.dart';

class BlockNav2 extends StatelessWidget {
  const BlockNav2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: UISize.screenWidth / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 4, bottom: 4),
            child: Text("    卖闲置换钱",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("F8F8F8"),
                    ),
                    width: UISize.screenWidth / 2.4,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("上门回▶",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: HexColor("FE2A1F"))),
                                Text("57类免费上门",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey)),
                              ]),
                          Image.network("https://unsplash.it/30/30/?random"),
                        ])),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("F8F8F8"),
                    ),
                    width: UISize.screenWidth / 4.8,
                    child: Column(children: [
                      Text("手机寄卖",
                          style: TextStyle(
                              fontSize: 13, color: HexColor("FE8E2D"))),
                      Text("48小时卖掉",
                          style: TextStyle(fontSize: 11, color: Colors.grey))
                    ])),
                Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("F8F8F8"),
                    ),
                    width: UISize.screenWidth / 4.8,
                    child: Column(children: [
                      Text("淘宝转卖",
                          style: TextStyle(
                              fontSize: 13, color: HexColor("FEC345"))),
                      Text("一键发布",
                          style: TextStyle(fontSize: 11, color: Colors.grey))
                    ])),
              ])
        ],
      ),
    );
  }
}
