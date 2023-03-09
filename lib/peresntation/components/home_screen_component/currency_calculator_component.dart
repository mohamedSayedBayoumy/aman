import 'package:flutter/material.dart';

import '../drop_list_component.dart';
import '../space_component.dart';
import '../text_component.dart';
import '../textfiled_component.dart';


class CurrencyCalculatorComponents extends StatefulWidget {
  const CurrencyCalculatorComponents({Key? key}) : super(key: key);

  @override
  State<CurrencyCalculatorComponents> createState() =>
      _CurrencyCalculatorComponentsState();
}

class _CurrencyCalculatorComponentsState
    extends State<CurrencyCalculatorComponents> {
  static List<String> country = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];
  dynamic selectChoiceId = country[1];

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.indigo.shade900;
    }
    return Colors.blue;
  }

  double exchangeRate = 0;

  TextEditingController fromController = TextEditingController();

  TextEditingController toController = TextEditingController();

  void sum() {
    if (fromControllerOne.text.isEmpty) {
      setState(() {
        toControllerOne.text = '';
      });
    } else {
      var myInt = int.parse(fromControllerOne.text);
      assert(myInt is int);
      var sum = myInt * 2;
      setState(() {
        toControllerOne.text = sum.toString();
        print(toControllerOne.text);
      });
    }
  }
  void switchSum() {
    if (fromControllerTwo.text.isEmpty) {
      setState(() {
        toControllerTwo.text = '';
      });
    } else {
      var myInt = int.parse(fromControllerTwo.text);
      assert(myInt is int);
      var sum = myInt * 2;
      setState(() {
        toControllerTwo.text = sum.toString();
        print(toControllerTwo.text);
      });
    }
  }

  @override
  void initState() {
    fromControllerOne.addListener(() {
      sum();
    });
    fromControllerTwo.addListener(() {
      switchSum() ;
    });
    super.initState();
  }

  bool switchPosition = true;
  bool switchControllers = true;
  TextEditingController fromControllerOne  = TextEditingController() ;
  TextEditingController fromControllerTwo  = TextEditingController() ;
  TextEditingController toControllerOne  =   TextEditingController() ;
  TextEditingController toControllerTwo  =   TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Stack(
              children: [
                AnimatedPositioned(
                    top: switchPosition == true
                        ? media.height * .03
                        : media.height * .16,
                    duration: const Duration(milliseconds: 800),
                    child: Container(
                      width: media.width * .62,
                      height: media.height * .05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white),
                      child: Row(
                        children: [DropList(
                          iconColor: Colors.white,
                          textColor: Colors.white,
                          styleBorder: 18.0,
                          colorBorder: Colors.blueAccent,
                          color: Colors.blueAccent,
                          list: country,
                          value: selectChoiceId,
                          width: media.width * .4,
                          height: media.height * .05,
                        ),
                          CustomTextField(
                            maxLength: 2,
                            textInputType: TextInputType.number,
                            controller: switchControllers ==  true ? fromControllerOne : toControllerTwo,
                            width: media.width * .22,
                            curveBorder: 80.0,
                            fill: false,
                            styleBorder: InputBorder.none,
                          ),
                        ],
                      ),
                    )), AnimatedPositioned(
                  top: switchPosition == true
                      ? media.height * .16
                      : media.height * .03,
                  duration: const Duration(milliseconds: 800),
                  child: Container(width: media.width * .62,
                    height: media.height * .05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropList(
                          iconColor: Colors.white,
                          textColor: Colors.white,
                          styleBorder: 18.0,
                          colorBorder: Colors.blueAccent,
                          color: Colors.blueAccent,
                          list: country,
                          value: selectChoiceId,
                          width: media.width * .4,
                          height: media.height * .05,
                        ),
                        CustomTextField(
                          maxLength: 2,
                          textInputType: TextInputType.number ,
                          controller: switchControllers ==  true ? toControllerOne : fromControllerTwo,
                          width: media.width * .22,
                          curveBorder: 80.0,
                          fill: false,
                          styleBorder: InputBorder.none,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: media.width,
                  height: media.height * .03,
                  margin: EdgeInsets.only(top: media.height * .08),
                  child: Row(
                    children: [
                      TextComponent(
                        text: "نقدي",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      const Spacer(),
                      TextComponent(
                        text: "بنك",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: media.width,
                  height: media.height * .03,
                  margin: EdgeInsets.only(top: media.height * .21),
                  child: Row(
                    children: [
                      TextComponent(
                        text: "نقدي",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                      const Spacer(),
                      TextComponent(
                        text: "بنك",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked4,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked4 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextComponent(
                    text: "العمله من", colorText: Colors.white, fontSize: 20.0),
                SpaceComponent(
                  height: media.height * .02,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      switchPosition = !switchPosition;
                      switchControllers = !switchControllers;
                    });
                  },
                  child: Image.asset(
                    "assets/row_up_down.png",
                    height: media.height * .06,
                  ),
                ),
                SpaceComponent(
                  height: media.height * .01,
                ),
                TextComponent(
                    text: "العمله الي",
                    colorText: Colors.white,
                    fontSize: 20.0),
              ],
            )),
      ],
    );
  }
}
