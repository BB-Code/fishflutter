import 'package:fishflutter/config/config.dart';
import 'package:provider/provider.dart';
import 'package:fishflutter/provider/Counter.dart';
import 'package:fishflutter/utils/UISize.dart';
import 'package:fishflutter/utils/HexColor.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    final counter = Provider.of<Counter>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("FFFFFF"),
        ),
        body: Container(
            color: HexColor("FFFFFF"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Config.imagePrefix + "hi.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: UISize.screenWidth / 1.1,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: HexColor("F87C22"),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Config.imagePrefix + "taobao.png",
                              fit: BoxFit.cover),
                          Text("快速登录", style: TextStyle(color: Colors.white))
                        ],
                      )),
                ),
                SizedBox(
                  width: UISize.screenWidth / 1.1,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: HexColor("48A2F8"),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Config.imagePrefix + "zhifubao.png",
                              fit: BoxFit.contain),
                          Text("快速登录", style: TextStyle(color: Colors.white))
                        ],
                      )),
                ),
                SizedBox(
                    width: UISize.screenWidth / 1.1,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        onPressed: () {
                          counter.increment();
                        },
                        color: Colors.white,
                        child: Text("账号密码/短信验证码登录 ${counter.count}",
                            style: TextStyle(color: Colors.black))))
              ],
            )));
  }
}
