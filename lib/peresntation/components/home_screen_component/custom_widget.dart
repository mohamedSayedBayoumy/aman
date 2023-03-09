
import 'package:flutter/material.dart';
import '../general_button_component.dart';
import '../text_component.dart';
import 'currency_calculator_component.dart';
import 'exchange_rate_component.dart';

class CustomNews extends StatefulWidget {
  const CustomNews({Key? key}) : super(key: key);

  @override
  State<CustomNews> createState() => _CustomNewsState();
}

class _CustomNewsState extends State<CustomNews> {
  dynamic change = true;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return   Container(
      height: media.height,
      color: Colors.indigo.shade900.withOpacity(.5),
      child: Column(
        children: [
          Row(
            children: [
              GeneralButton(
                  width: media.width*.47,
                  borderStyle: 0.0,
                  elevation: 0.0,
                  color: change == true
                      ? Colors.indigo.shade300.withOpacity(.3)
                      :   Colors.indigo.shade900.withOpacity(.5),
                  onPressed: () {
                    if (change == true) {
                      setState(() {
                        change = false;

                      });
                    }
                  },
                  child: TextComponent(
                    text: "حاسبة العملات",
                    isBold: true,
                    fontSize: 18.0,
                    colorText: Colors.white,
                  )),
              GeneralButton(
                  width: media.width*.47,
                  borderStyle: 0.0,
                  elevation: 0.0,
                  color: change == false
                      ? Colors.indigo.shade300.withOpacity(.3)
                      :  Colors.indigo.shade900.withOpacity(.5),
                  onPressed: () {
                    if (change == false) {
                      setState(() {
                        change = true;

                      });
                    }
                  },
                  child: TextComponent(
                    text: "سعر الصرف",
                    isBold: true,
                    fontSize: 18.0,
                    colorText: Colors.white,
                  )),
            ],
          ) ,
          AnimatedCrossFade(
              firstChild:   const CurrencyCalculatorComponents() ,
              secondChild: ExchangeRateComponent(colorText: Colors.white,needDivider: false) ,
              crossFadeState: change == true ? CrossFadeState.showFirst : CrossFadeState.showSecond  ,
              duration: const Duration(milliseconds: 500)) ,
        ],
      )  ,
    );

  }
}
