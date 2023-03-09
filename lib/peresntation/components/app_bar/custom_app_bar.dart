import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/components/app_bar/appbar_component.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  bool? needIconBell;

  bool? needBackButton;

  void Function()? onPressedButtonBell;

  void Function()? onPressedButtonMenu;

  void Function()? onPressedButtonBack;

  dynamic customSize;
  dynamic color;
  dynamic elevation;

  CustomAppBar(
      {this.needBackButton,
      this.onPressedButtonBell,
      this.onPressedButtonMenu,
      this.onPressedButtonBack,
      this.color,
      this.elevation,
      required this.title,
      required this.customSize,
      required this.needIconBell,
      Key? key})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(customSize ?? 90.0);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return NaturalAppBar(
      elevation: elevation ?? 15.0,
      color: color,
      needIconBell: needIconBell,
      title: title,
      centerTitle: false,
      customSize: media.height * .13,
      widgets: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset(
              "assets/icons/menu.png",
              width: media.width * .06,
            )),
        needBackButton == true
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/icons/back-arrow.png",
                  width: media.width * .06,
                ))
            : Container(),
      ],
    );
  }
}
