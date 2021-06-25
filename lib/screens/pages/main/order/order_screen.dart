import 'package:flutter/material.dart';

import 'screens/all_orders_screen.dart';
import 'screens/dibatalkan_screen.dart';
import 'screens/dikemas_screen.dart';
import 'screens/dikirim_screen.dart';
import 'screens/pesanan_screen.dart';
import 'screens/selesai_screen.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              title: Text('Orderan'),
              centerTitle: true,
              leading: Text(''),
              actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(child: Text('Semua Orderan')),
                  Tab(child: Text('Pesanan')),
                  Tab(child: Text('Dikemas')),
                  Tab(child: Text('Dikirim')),
                  Tab(child: Text('Selesai')),
                  Tab(child: Text('Dibatalkan')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            AllOrderScreen(),
            PesananScreen(),
            DikemasScreen(),
            DikirimScreen(),
            SelesaiScreen(),
            DibatalkanScreen(),
          ],
        ),
      )),
    );
  }
}
