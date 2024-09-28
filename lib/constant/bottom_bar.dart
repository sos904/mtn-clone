import 'package:flutter/material.dart';
import 'package:mtn/MoMo.dart';
import 'package:mtn/More.dart';
import 'package:mtn/home.dart';
import 'package:mtn/shop.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const Home(),
    const Shop(),
    const Momo(),
    const More(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        iconSize: 28,
        onTap: updatePage,
        items: const [
          // HOME
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          // Shop
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Shop',
          ),
          // MoMo
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
            ),
            label: 'MoMo',
          ),
          //more
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_vert,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
