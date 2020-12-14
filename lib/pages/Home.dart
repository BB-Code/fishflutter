import 'package:fishflutter/components/BlockNav1.dart';
import 'package:fishflutter/components/BlockNav2.dart';
import 'package:fishflutter/components/FallsList.dart';
import 'package:fishflutter/components/HeaderNav.dart';
import 'package:fishflutter/components/Mask.dart';
import 'package:fishflutter/config/config.dart';
import 'package:fishflutter/utils/HexColor.dart';
import 'package:fishflutter/utils/UISize.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    return Container(color: HexColor("#F2F2F2"), child: FullsList());
    //Stack(
    //   children: [
    //     Positioned(
    //       top: 0,
    //       left: 0,
    //       child: Container(
    //         decoration: BoxDecoration(
    //             color: HexColor("FFE915"),
    //             borderRadius: BorderRadius.only(
    //                 bottomLeft: Radius.circular(20),
    //                 bottomRight: Radius.circular(20))),
    //         height: 100,
    //         width: UISize.screenWidth,
    //         child: Container(
    //           margin: EdgeInsets.only(top: 10),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Padding(
    //                   padding: EdgeInsets.only(left: 20),
    //                   child: Icon(Icons.qr_code_scanner)),
    //               SizedBox(
    //                 width: 200,
    //                 child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       Text(
    //                         "关注",
    //                         style: TextStyle(fontSize: 18),
    //                       ),
    //                       Container(
    //                         decoration: BoxDecoration(
    //                             border: Border(
    //                           bottom: BorderSide(
    //                             color: Colors.black,
    //                             width: 3,
    //                           ),
    //                         )),
    //                         child: Text(
    //                           "首页",
    //                           style: TextStyle(
    //                             fontSize: 20,
    //                             fontWeight: FontWeight.bold,
    //                           ),
    //                         ),
    //                       ),
    //                       Text(
    //                         "海外",
    //                         style: TextStyle(fontSize: 18),
    //                       )
    //                     ]),
    //               ),
    //               Image.asset(
    //                 Config.imagePrefix + "qiandao.png",
    //                 width: 50,
    //                 fit: BoxFit.cover,
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //       //搜索框
    //     ),
    //     Positioned(
    //       top: UISize.screenHeight / 8,
    //       left: UISize.screenWidth / 20,
    //       child: Container(
    //         width: UISize.screenWidth / 1.1,
    //         height: UISize.screenHeight / 16,
    //         alignment: Alignment.center,
    //         child: TextField(
    //           decoration: InputDecoration(
    //               fillColor: Colors.white,
    //               filled: true,
    //               border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(20),
    //                   borderSide: BorderSide.none),
    //               alignLabelWithHint: true,
    //               //prefix: Icon(Icons.search, color: Colors.grey),
    //               //prefixIcon: Icon(Icons.search, color: Colors.grey),
    //               contentPadding: EdgeInsets.symmetric(vertical: 4.0),
    //               hintText: "🔍 冰箱| 华为 mate30pro"),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //         top: UISize.screenHeight / 5,
    //         child: SingleChildScrollView(
    //             physics: AlwaysScrollableScrollPhysics(),
    //             child: Column(
    //               children: [
    //                 HeaderNav(),
    //                 BlockNav1(),
    //                 BlockNav2(),

    //               ],
    //             ))),
    //     //登录遮罩
    //     Positioned(
    //       top: UISize.screenHeight / 1.18,
    //       child: Mask(),
    //     )
    //   ],
    // ));
  }
}
