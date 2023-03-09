// ignore_for_file: file_names, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';


class GeneralButton extends StatelessWidget {
  Function()? onPressed;

  dynamic child;

  dynamic elevation;

  dynamic color;

  dynamic width;

  dynamic height;
  dynamic borderStyle;

  GeneralButton({Key? key,
    required this.onPressed,
    required this.child,
    this.elevation,
    this.borderStyle,
    this.color,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  width,
      height: height,
      child: ElevatedButton(
        onPressed:  onPressed,
        child: child,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(elevation),
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderStyle ?? 5)))),
      ),
    );
  }
}
