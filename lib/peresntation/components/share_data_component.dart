// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:test2/peresntation/components/text_component.dart';

class ShareDataComponent extends StatelessWidget {
  String share1 ;
  String share2 ;
  String share3 ;
  ShareDataComponent({required this.share1 ,required this.share2 , required this.share3,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: (){}, child: TextComponent(text:share1)) ,
        Container(margin: const EdgeInsets.symmetric(horizontal: 20),height: 15, width: 1,color: Colors.black87,) ,
        TextButton(onPressed: (){}, child: TextComponent(text:share2)) ,

        Container(margin: const EdgeInsets.symmetric(horizontal: 20),height: 15, width: 1,color: Colors.black87,) ,
        TextButton(onPressed: (){}, child: TextComponent(text:share3)) ,

      ],
    )
    ;
  }
}
