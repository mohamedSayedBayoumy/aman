// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'Directionality_component.dart';

class DropList extends StatefulWidget {

  final List<String>? list;
  dynamic value;
  double? height;
  double? width;
  dynamic color;
  dynamic textColor;
  dynamic styleBorder;
  dynamic colorBorder;
  dynamic iconColor;
  String? Function(String?)? onChange;


  DropList(
      {this.width,
      this.height,
      this.colorBorder,
      this.onChange,
      this.color,
      this.textColor,
        this.iconColor ,
      this.styleBorder,
      required this.list,
      required this.value,
      Key? key})
      : super(key: key);

  @override
  State<DropList> createState() => _DropList();
}

class _DropList extends State<DropList> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      width: widget.width,
      height: widget.height,
      padding: EdgeInsets.symmetric(horizontal: media.width * .03),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: widget.color ?? Colors.white,
        border: Border.all(color:  widget.colorBorder ?? Colors.black87),
        borderRadius: BorderRadius.circular(widget.styleBorder ?? 15),
      ),
      child: DirectionalityComponent(
        child: DropdownButton(
          alignment: Alignment.topLeft,
          iconEnabledColor: widget.iconColor ?? Colors.indigo,
          iconSize: media.height * .04,
          itemHeight: 60.0,
          isExpanded: true,
          dropdownColor: widget.textColor == Colors.white  ? Colors.grey :  Colors.white,
          style: TextStyle(
              color: widget.textColor ?? Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 18),
          value: widget.value.toString(),
          items: widget.list!.map((valueItem) {
            return DropdownMenuItem(
                value: valueItem,
                child: DirectionalityComponent(
                    child: Text(
                  valueItem.toString(),
                )));
          }).toList(),
          onChanged: widget.onChange ?? (val) {
            /// TODO : ------------
            setState(() {
              widget.value = val;
              print(widget.value);
            });
          },
        ),
      ),
    );
  }
}
