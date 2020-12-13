import 'package:flutter/material.dart';

class BlockNav1 extends StatelessWidget {
  const BlockNav1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Column(children: [
          Text("玩家 最懂的人最狠的货"),
          Image.network("", fit: BoxFit.cover, width: 100, height: 100)
        ]),
        Column()
      ]),
    );
  }
}
