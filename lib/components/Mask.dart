import 'package:flutter/material.dart';

class Mask extends StatelessWidget {
  const Mask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(59, 41, 41, 2),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person, color: Colors.white),
            SizedBox(
              width: 100,
              child: Text(
                "欢迎来到咸鱼~ 登录打开新世界",
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              color: Colors.redAccent[200],
              onPressed: () {},
              child: Text("马上登录", style: TextStyle(color: Colors.white)),
            )
          ],
        ));
  }
}
