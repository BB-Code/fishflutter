import 'package:fishflutter/pages/Fishond.dart';
import 'package:fishflutter/pages/Home.dart';
import 'package:fishflutter/pages/Idle.dart';
import 'package:fishflutter/pages/Me.dart';
import 'package:fishflutter/pages/Messages.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  final List<Widget> _pages = <Widget>[
    Home(),
    Fishond(),
    Idle(),
    Messages(),
    Me()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final navColor = Colors.black;
    final navSelectedColor = Colors.yellow;
    return Scaffold(
      body: PageView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 26),
        onPressed: () {
          Navigator.pushNamed(context, "/Login");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home, size: 26, color: navSelectedColor),
              icon: Icon(Icons.home_outlined, size: 26, color: navColor),
              title: Text('首页', style: TextStyle(color: navColor))),
          BottomNavigationBarItem(
              activeIcon:
                  Icon(Icons.access_alarm, size: 26, color: navSelectedColor),
              icon:
                  Icon(Icons.access_alarm_outlined, size: 26, color: navColor),
              title: Text('鱼塘', style: TextStyle(color: navColor))),
          BottomNavigationBarItem(
              title: Text('卖闲置', style: TextStyle(color: navColor)),
              icon: Icon(Icons.access_alarm,
                  size: 26, color: Colors.transparent)),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.info, size: 26, color: navSelectedColor),
              icon: Icon(Icons.info_outlined, size: 26, color: navColor),
              title: Text('消息', style: TextStyle(color: navColor))),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person, size: 26, color: navSelectedColor),
              icon: Icon(Icons.person_outlined, size: 26, color: navColor),
              title: Text('我的', style: TextStyle(color: navColor)))
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(_currentIndex);
        },
      ),
    );
  }
}
