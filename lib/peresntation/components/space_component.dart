// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SpaceComponent extends StatelessWidget {
  double? height;
  double? width;

  SpaceComponent({this.height,this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return SizedBox(
      height: height ?? media.height * .01,
      width: width ?? media.height * .01,
    );
  }
}
