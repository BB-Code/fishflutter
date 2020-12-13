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
      margin: EdgeInsets.only(left: 20, right: 20),
      width: UISize.screenWidth / 1.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: [
            Image.asset(Config.imagePrefix + "phone.png"),
            Text("二手手机")
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "fruit.png"),
            Text("生鲜水果")
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "package.png"),
            Text("奢品珠宝")
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "book.png"),
            Text("二手图书")
          ]),
          Column(children: [
            Image.asset(Config.imagePrefix + "more.png"),
            Text("分类")
          ])
        ],
      ),
    );
  }
}
