import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'akun/akun_screen.dart';
import 'kupon/kupon_screen.dart';
import 'order/order_screen.dart';
import 'product/product_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentNav = 0;

  final List<Widget> _children = [
    // BerandaScreen(),
    AkunScreen(),
    ProductScreen(),
    OrderScreen(),
    KuponScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentNav],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 10,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.dashboard),
          //   label: "Beranda",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Akun",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cube_box),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gift),
            label: "Kupon",
          ),
        ],
        currentIndex: _currentNav,
        onTap: (index) {
          setState(() {
            _currentNav = index;
          });
        },
      ),
    );
  }
}
