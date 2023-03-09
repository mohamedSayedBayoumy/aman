
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/home_screen_component/exchange_rate_component.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';

class ExchangeRateScreen extends StatelessWidget {
  const ExchangeRateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
            needIconBell: true,
            customSize: media.height * .12,
            title: 'سعر الصرف',
            onPressedButtonBack: () {
              /// TODO : SOME THING
            },
            onPressedButtonMenu: () {
              /// TODO : SOME THING
            }),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer:    DrawerComponent(),

        body: GeneralPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            TextComponent(
                text: "اسعار صرف العملات اليوم",
                colorText: Colors.black87,
                isBold: true),
            SpaceComponent(height:media.height*.05,) ,
            ExchangeRateComponent(colorText: Colors.indigo ,needDivider: true),
            SpaceComponent(height:media.height*.04,) ,
            GeneralButton(
              onPressed: () {
              /// TODO : ----------------
                },
              color: Colors.green,
              height: media.height*.06,
              elevation: 12.0,
              width: media.width*.3,
              child: TextComponent(
                  text: "تحديث",
                  colorText: Colors.white,
                  fontSize: 20.0,
                  isBold: true),
            )
          ],
        )));
  }
}
