import 'package:flutter/material.dart';

class Idle extends StatefulWidget {
  @override
  IdleState createState() => IdleState();
}

class IdleState extends State<Idle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("闲置"),
    ));
  }
}
