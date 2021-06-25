import 'package:flutter/material.dart';
import 'package:seller_app/utils/dimens.dart';

import 'button_widget.dart';

Future<void> showWidgetBottomSheet({
  required BuildContext context,
  Widget? child,
  bool isScrollControlled = false,
  double? maxHeight,
  bool isDismissible = false,
}) async {
  showModalBottomSheet(
      isScrollControlled: isScrollControlled,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      isDismissible: isDismissible,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          constraints: BoxConstraints(
            minHeight: 100,
            maxHeight: maxHeight == null
                ? MediaQuery.of(context).size.height - 200
                : maxHeight,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 60,
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: Color(0xFFE0E0E0)),
              ),
              SizedBox(height: Dimens.padding),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /// Title section
                    ///
                    /// If title null, the title section will be hidden
                    child ?? Container(),

                    SizedBox(height: Dimens.sizedBoxHeight)
                  ],
                ),
              )
            ],
          ),
        );
      });
}

Future<void> showDraggableBottomSheet({
  required BuildContext context,
  required Widget child,
}) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
    ),
    isDismissible: false,
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.4,
      maxChildSize: 0.9,
      builder: (_, scrollController) => Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10),
        constraints: BoxConstraints(
          minHeight: 100,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 60,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Color(0xFFE0E0E0),
              ),
            ),
            SizedBox(height: Dimens.padding),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  child,
                  SizedBox(height: Dimens.sizedBoxHeight)
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

void showLocationRequestPermission(
    {required BuildContext context,
    required GestureTapCallback onAgreePressed,
    required GestureTapCallback onCancelPressed}) {
  showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      isDismissible: false,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: 10, horizontal: Dimens.padding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Color(0xFFE0E0E0)),
                ),
                SizedBox(height: Dimens.padding),
                Text(
                  "Coba",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Dimens.padding),
                Text(
                  "Coba",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                ),
                SizedBox(height: Dimens.verticalPadding),
                RoudedButton(
                  text: "Aktifkan",
                  width: MediaQuery.of(context).size.width,
                  press: () {
                    Navigator.of(context).pop();
                    onAgreePressed();
                  },
                ),
                SizedBox(height: Dimens.fieldMarginTop),
                RoudedButton(
                  text: "Tidak",
                  width: MediaQuery.of(context).size.width,
                  press: () {
                    Navigator.of(context).pop();
                    onCancelPressed();
                  },
                  color: Colors.white,
                  textcolor: Colors.black87,
                  side: BorderSide(
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(height: Dimens.verticalPadding),
              ],
            ),
          ),
        );
      });
}
