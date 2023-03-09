// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class DirectionalityComponent extends StatelessWidget {
  Widget child ;
  DirectionalityComponent({required this.child , Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
        textDirection: TextDirection.rtl, child: child,
    );
  }
}
