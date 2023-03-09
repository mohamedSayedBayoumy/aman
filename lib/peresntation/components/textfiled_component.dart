// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Directionality_component.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  IconData? prefixIcon;
  IconData? suffixIcon;
  double? height;
  double? width;
  int? length;
  int? maxLength;
  int? minLength;
  String? labelText;
  String? hinText;
  bool? fill;
  Color? fillColor;
  Color? borderColor;
  Color? enabledBorderColor;
  dynamic enabledBorderCurve;
  Color? labelColor;
  InputBorder? styleBorder;
  String? Function(String?)? valid;
  String? Function(String?)? onChange;
  String? Function(String?)? onFieldSubmitted;
  String? Function(String?)? onSaved;
  void Function()? onTap ;
  bool? enabled;
  TextInputType? textInputType;
  dynamic curveBorder;


  void Function()? onPressedSuffixIcon;

  CustomTextField(
      {Key? key,
      required this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.onPressedSuffixIcon,
      this.enabledBorderCurve,
      this.onFieldSubmitted,
      this.textInputType,
      this.curveBorder,
      this.labelColor,
      this.onChange,
      this.onTap ,
      this.maxLength,
      this.hinText,
      this.minLength,
      this.fill,
      this.fillColor,
      this.valid,
      this.labelText,
      this.enabled,
      this.length,
      this.height,
      this.styleBorder,
      this.enabledBorderColor,
      this.onSaved,
      this.width,  this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      child: Theme(
        data: Theme.of(context).copyWith(
            colorScheme:   ColorScheme.light(primary: enabledBorderColor?? Colors.grey)),
        child: DirectionalityComponent(
          child: TextFormField(
            onFieldSubmitted: onFieldSubmitted ,
            keyboardType: textInputType,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            onChanged: onChange,
            onSaved: onSaved,
            onTap: onTap ,
            enabled: enabled,
            validator: valid,
            controller: controller,
            minLines: maxLength,
            maxLines: minLength,
            maxLength: length,
            decoration: InputDecoration(
              suffixIcon: suffixIcon == null
                  ? null
                  : IconButton(
                      onPressed: onPressedSuffixIcon,
                      icon: Icon(
                        suffixIcon,
                        color: Colors.black,
                      )),
              filled: fill,
              fillColor: fillColor ?? Colors.white,
              labelText: labelText,
              labelStyle: TextStyle(color: labelColor ?? Colors.indigo),
              hintText: hinText,
              prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
              enabledBorder: styleBorder ?? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(curveBorder ?? 13),
                  borderSide:
                      BorderSide(color: borderColor ?? Colors.black87)),
              border: styleBorder ?? OutlineInputBorder(
                borderRadius: BorderRadius.circular(enabledBorderCurve ?? 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
