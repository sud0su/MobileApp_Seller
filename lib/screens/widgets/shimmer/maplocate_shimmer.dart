import 'package:flutter/material.dart';

class ShimmerMapLocated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.75;

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 5.0),
            width: MediaQuery.of(context).size.width * 0.10,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 25,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
