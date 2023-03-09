import 'package:flutter/material.dart';

void alertDialog(
  BuildContext ctx, {
  required String stringTitle,
  required Widget child,
}) {
  showDialog(
      context: ctx,
      builder: (context) {
        return Container(
          child: child,
        );
      });
}
