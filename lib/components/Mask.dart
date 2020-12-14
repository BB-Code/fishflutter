import 'package:fishflutter/utils/UISize.dart';
import 'package:flutter/material.dart';

class Mask extends StatelessWidget {
  const Mask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UISize().init(context);
    return Container(
        width: UISize.screenWidth,
        color: Color.fromARGB(80, 72, 72, 72),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person, color: Colors.white),
            Padding(
                padding: EdgeInsets.only(right: 140),
                child: SizedBox(
                  width: 100,
                  child: Text(
                    "欢迎来到咸鱼~ 登录打开新世界",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            FlatButton(
              color: Colors.redAccent[200],
              onPressed: () {},
              child: Text("马上登录", style: TextStyle(color: Colors.white)),
            )
          ],
        ));
  }
}
