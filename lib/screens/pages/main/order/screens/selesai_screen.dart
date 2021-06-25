import 'package:flutter/material.dart';
import 'package:seller_app/common/path.dart';

class SelesaiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    ));
  }
}
