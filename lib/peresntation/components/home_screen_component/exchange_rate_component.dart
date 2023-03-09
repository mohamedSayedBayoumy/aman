// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../text_component.dart';

class ExchangeRateComponent extends StatelessWidget {
  dynamic colorText ;
  dynamic needDivider ;
   ExchangeRateComponent({required this.needDivider,required this.colorText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SizedBox(
      height: media.height*.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) {
          final media = MediaQuery.of(context).size;
          return Padding(
              padding: EdgeInsets.all(media.width*.03) ,
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextComponent(text: 'SDG 630', fontSize: 18.0,colorText: colorText, isBold: true,) ,
                      TextComponent(text: '=', fontSize: 18.0,colorText: colorText,) ,
                      TextComponent(text: 'USD 1', fontSize: 18.0,colorText: colorText,isBold: true,) ,
                    ],
                  ) ,
                  needDivider == true ? const Divider(color: Colors.black87) : const SizedBox()  ,
                ],
              )

          ) ;
        },
      ),
    ) ;

  }
}
