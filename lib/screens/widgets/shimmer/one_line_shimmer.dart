import 'package:flutter/material.dart';

class OneLineShimmer extends StatelessWidget {
  const OneLineShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.7;

    return Container(
      height: 20,
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    );
  }
}

class MultiLineShimmer extends StatelessWidget {
  const MultiLineShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.4;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        Container(
          height: 20,
          width: containerWidth,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}
