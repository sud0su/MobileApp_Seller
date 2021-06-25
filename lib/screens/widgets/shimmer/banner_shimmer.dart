import 'package:flutter/material.dart';

class ShimmerBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerHeight = 210;

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: containerHeight,
              margin: EdgeInsets.only(top: 5.0),
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: containerHeight,
              margin: EdgeInsets.only(top: 5.0),
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: containerHeight,
              margin: EdgeInsets.only(top: 5.0),
              width: MediaQuery.of(context).size.width * 0.10,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
