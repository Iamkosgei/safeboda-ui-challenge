import 'package:flutter/material.dart';

import 'account.dart';
import 'homepage.dart';
import 'orderspage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTab = 1;
  IndexedStack pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedTab, children: pageList),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFFF9893E),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                height: 20,
                child: Image.asset("assets/icons/Orders.png"),
              ),
              title: new Text('Orders')),
          BottomNavigationBarItem(
              icon: Container(
                height: 20,
                child: Image.asset("assets/icons/logo.png"),
              ),
              title: new Text('SafeBoda')),
          BottomNavigationBarItem(
              icon: Container(
                height: 20,
                child: Image.asset("assets/icons/account.png"),
              ),
              title: new Text('My account')),
        ],
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
      ),
    );
  }

  List<Widget> get pageList {
    List<Widget> pageList = List<Widget>();
    pageList.add(OdersPage());
    pageList.add(HomePage());
    pageList.add(MyAccount());

    return pageList;
  }
}
