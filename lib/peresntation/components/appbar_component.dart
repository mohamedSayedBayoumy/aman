import 'package:flutter/material.dart';

class NaturalAppBar extends StatelessWidget implements PreferredSizeWidget {
  dynamic title;
  dynamic color;
  dynamic colorText;
  dynamic elevation;
  dynamic child;

  NaturalAppBar(
      {Key? key,
      this.title,
      this.elevation,
      this.child,
      this.color,
      this.colorText})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return AppBar(
      centerTitle: true,
      toolbarHeight: 90,
      backgroundColor: Colors.indigo,
      elevation: 15.0,
      actions: [
        IconButton(
            onPressed: () {
             
            },
            icon: const Icon(Icons.mobile_friendly))
      ],
      title: Text(
        title,
        style: const TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white),
      ),
    );
  }
}
