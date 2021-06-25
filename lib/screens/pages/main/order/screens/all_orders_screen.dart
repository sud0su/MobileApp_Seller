import 'package:flutter/material.dart';
import 'package:seller_app/common/path.dart';
import 'package:seller_app/screens/pages/main/order/components/order_list.dart';

class AllOrderScreen extends StatefulWidget {
  @override
  _AllOrderScreenState createState() => _AllOrderScreenState();
}

class _AllOrderScreenState extends State<AllOrderScreen> {
  bool _orderExist = true;

  @override
  Widget build(BuildContext context) {
    return _orderExist ? OrderList() : _noOrder();
  }

  Widget _noOrder() {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              '${FilePath.iconAssets}noorder.png',
              scale: 7,
            ),
            Text(
              "Belum ada pesanan",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
