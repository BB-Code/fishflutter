import 'package:fishflutter/config/config.dart';
import 'package:fishflutter/utils/HexColor.dart';
import 'package:fishflutter/utils/uisize.dart';
import 'package:flutter/material.dart';

class HeaderNav extends StatelessWidget {
  const HeaderNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: UISize.screenWidth / 1.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            Image.asset(Config.imagePrefix + "phone.png", width: 40),
            Text(
              "二手手机",
              style: TextStyle(color: HexColor("979797"), fontSize: 14),
            )
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "fruit.png", width: 40),
            Text(
              "生鲜水果",
              style: TextStyle(color: HexColor("979797"), fontSize: 14),
            )
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "package.png", width: 40),
            Text(
              "奢品珠宝",
              style: TextStyle(color: HexColor("979797"), fontSize: 14),
            )
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "book.png", width: 40),
            Text(
              "二手图书",
              style: TextStyle(color: HexColor("979797"), fontSize: 14),
            )
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "more.png", width: 40),
            Text(
              "分类",
              style: TextStyle(color: HexColor("979797"), fontSize: 14),
            )
          ])
        ],
      ),
    );
  }
}
