// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GeneralPadding extends StatelessWidget {
  Widget child;

  GeneralPadding({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0 ,vertical: 30.0), child: child);
  }
}
