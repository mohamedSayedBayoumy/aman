import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void alertDialog(
  BuildContext ctx, {
  required String stringTitle,
  required Widget child,
}) {
  showDialog(
      context: ctx,
      builder: (context) {
        return ElasticIn(
          duration: const Duration(milliseconds: 1400),
          delay: const Duration(milliseconds: 200),
          child: AlertDialog(
            backgroundColor: Colors.white,
            scrollable: true,
            title: Text(
              stringTitle ,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontFamily: 'Questrial',
              ),
            ),

            elevation: 1,
            content: child,
          ),
        );
      });
}
