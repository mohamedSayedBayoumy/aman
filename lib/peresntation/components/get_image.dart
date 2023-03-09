
import 'package:flutter/material.dart';
import 'package:test2/peresntation/components/text_component.dart';

import 'alert.dart';
import 'id_image.dart';

class GetImageComponent extends StatefulWidget {
  final String text;

  const GetImageComponent({required this.text, Key? key}) : super(key: key);

  @override
  State<GetImageComponent> createState() => _GetImageComponentState();
}

class _GetImageComponentState extends State<GetImageComponent> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
            onPressed: () {
              alertDialog(context,
                  child: ContentId(),
                  stringTitle: "اختيار الهوية");
            },
            child: const Text(
              "ارفاق",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
              ),
            )),
        TextComponent(
          text: "اثبات الهوية",
          fontSize: 20.0,
          isBold: true,
        ),
      ],
    );
  }
}
