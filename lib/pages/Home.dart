import 'package:fishflutter/provider/Counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Center(
      child: Text("首页${counter.count}"),
    );
  }
}
