// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../Directionality_component.dart';
import '../text_component.dart';


class NaturalAppBar extends StatefulWidget implements PreferredSizeWidget {
  dynamic title;
  dynamic color;
  dynamic colorText;
  dynamic elevation;
  dynamic child;
  dynamic customSize;
  dynamic toolbarHeight;
  dynamic heightFlexibleSpace;
  Widget? leading;
  dynamic centerTitle;
  dynamic colorIconDrawer = true;
  bool? needIconBell ;

  List<Widget>? widgets;

  NaturalAppBar(
      {Key? key,
      this.title,
      required this.needIconBell,
      this.elevation,
      this.leading,
      this.child,
      this.color,
      this.customSize,
      this.toolbarHeight,
      this.centerTitle,
      this.heightFlexibleSpace,
      this.widgets,
      this.colorText})
      : super(key: key);

  @override
  State<NaturalAppBar> createState() => _NaturalAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(customSize ?? 80.0);
}

class _NaturalAppBarState extends State<NaturalAppBar> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return DirectionalityComponent(
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: widget.centerTitle == null ? true : false,
        toolbarHeight: widget.toolbarHeight ?? media.height * .1,
        backgroundColor: widget.color ?? Colors.indigo,
        elevation: widget.elevation ?? 15.0,
        leading:  widget.needIconBell == true ? Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Image.asset(
                  "assets/icons/bell.png",
                  width: media.height * .03,
                  color: Colors.white,
                ));
          },
        ): null,
        actions: widget.widgets,
        title: SizedBox(width : media.width*04 ,child: TextComponent(text: widget.title ,colorText: Colors.white,fontSize: 25.0,)),
      ),
    );
  }
}

