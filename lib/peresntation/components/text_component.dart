// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class TextComponent extends StatelessWidget {
  String text;
  dynamic colorText;
  dynamic isBold;
  dynamic fontSize;
  dynamic fontFamily;
  dynamic needTextAlignInCenter;
  TextDecoration? decoration;

  TextComponent({this.needTextAlignInCenter ,this.colorText,this.decoration,this.fontFamily, this.isBold,  this.fontSize, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: needTextAlignInCenter == null ? null : TextAlign.center,
      textDirection: TextDirection.rtl,
        style: TextStyle(
        fontFamily: fontFamily,
          decoration: decoration ,
          color: colorText ?? Colors.indigo.shade500,
          fontSize: fontSize  ?? 25.0,
          fontWeight: isBold == true ? FontWeight.bold : null),
    );
  }
}
