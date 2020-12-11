import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  MessagesState createState() => MessagesState();
}

class MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("消息"),
    );
  }
}
