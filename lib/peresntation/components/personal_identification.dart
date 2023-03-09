// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:test2/peresntation/components/space_component.dart';
import 'package:test2/peresntation/components/text_component.dart';

import 'drop_list_component.dart';

class PersonalIdentification extends StatefulWidget {
  Widget? widget;

  PersonalIdentification({Key? key}) : super(key: key);

  @override
  State<PersonalIdentification> createState() => PersonaIdentificationState();
}

class PersonaIdentificationState extends State<PersonalIdentification> {
  static List<String> typeId = [
    "نوع الهوية",
    "جواز سفر",
    "بطاقة",
    "رخصة قيادة",
  ];
  static dynamic selectChoiceId = typeId[0];
  bool passportChoose = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropList(
          list: typeId,
          value: selectChoiceId,
          onChange: (p0) {
            setState(() {
              selectChoiceId = p0.toString();
            });
            if (selectChoiceId == "جواز سفر") {
              setState(() {
                passportChoose = true;
              });
            } else {
              setState(() {
                passportChoose = false;
              });
            }
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_a_photo_outlined)),
            AnimatedCrossFade(
                firstChild: TextComponent(
                  text: "الواجهة الامامية",
                  colorText: Colors.black87,
                  fontSize: 15.0,
                  isBold: true,
                ),
                secondChild: TextComponent(
                  text: "صورة جواز",
                  colorText: Colors.black87,
                  fontSize: 15.0,
                  isBold: true,
                ),
                crossFadeState: passportChoose == false
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 400))
          ],
        ),
        SpaceComponent(),
        AnimatedCrossFade(
            firstChild: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo_outlined)),
                TextComponent(
                  text: "الواجهة الخلفية",
                  colorText: Colors.black87,
                  fontSize: 15.0,
                  isBold: true,
                )
              ],
            ),
            secondChild: Container(),
            crossFadeState: passportChoose == false
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 400))
      ],
    );
  }
}
