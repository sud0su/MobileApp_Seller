import 'package:flutter/material.dart';

Future<void> showCustomDialog(
    BuildContext context, String message, String status) async {
  await Future.delayed(Duration(microseconds: 1));

  try {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 100.0),
          child: AlertDialog(
            content: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  status == 'loading'
                      ? SizedBox(
                          child: CircularProgressIndicator(),
                          height: 25.0,
                          width: 25.0,
                        )
                      : status == 'error'
                          ? Icon(
                              Icons.error,
                              size: 35.0,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.done,
                              size: 35.0,
                              color: Theme.of(context).primaryColor,
                            ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Flexible(
                    child: Text(
                      message,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: status == 'loading'
                            ? Theme.of(context).primaryColor
                            : status == 'error'
                                ? Colors.red
                                : Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  } catch (e) {
    print(e.toString());
  }
}
