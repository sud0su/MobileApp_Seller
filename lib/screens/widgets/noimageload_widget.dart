import 'package:flutter/material.dart';
import 'package:seller_app/common/path.dart';

class NoImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('${FilePath.logoAssets}logo.png', scale: 5.0),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              'BeliPintar',
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallNoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('${FilePath.logoAssets}logo.png', scale: 5.0);
  }
}
