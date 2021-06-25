import 'package:flutter/material.dart';

class RoudedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? press;
  final double? width;
  final Color? color;
  final Color? textcolor;
  final BorderSide? side;

  const RoudedButton({
    Key? key,
    this.text,
    this.press,
    this.width,
    this.color,
    this.textcolor,
    this.side,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle roudedButton = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Theme.of(context).primaryColor,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      elevation: 1,
    );

    return SizedBox(
      width: width,
      height: 46,
      child: ElevatedButton(
        style: roudedButton,
        // onPressed: press as void Function(),
        onPressed: press,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 16,
            color: textcolor == null ? Colors.white : textcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {Key? key,
        this.onPressed,
        required this.label,
        this.icon,
        this.backgroundColor})
      : super(key: key);
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: icon,
      backgroundColor: backgroundColor,
    );
  }
}
