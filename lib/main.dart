import 'package:fishflutter/components/BottomNav.dart';
import 'package:fishflutter/pages/Fishond.dart';
import 'package:fishflutter/pages/Home.dart';
import 'package:fishflutter/pages/Idle.dart';
import 'package:fishflutter/pages/Login.dart';
import 'package:fishflutter/pages/Me.dart';
import 'package:fishflutter/pages/Messages.dart';
import 'package:fishflutter/provider/Counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => Counter())],
        child: MaterialApp(
          routes: <String, WidgetBuilder>{
            '/Home': (BuildContext context) => Home(),
            '/Fishond': (BuildContext context) => Fishond(),
            '/Idle': (BuildContext context) => Idle(),
            '/Message': (BuildContext context) => Messages(),
            '/Me': (BuildContext context) => Me(),
            "/Login": (BuildContext context) => Login()
          },
          title: '高仿咸鱼',
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(0, 0, 0, 0),
            splashColor: Color.fromRGBO(0, 0, 0, 0),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: BottomNav(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
