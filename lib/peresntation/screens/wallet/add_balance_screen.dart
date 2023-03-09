import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/drawer.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';

class AddBalanceScreen extends StatelessWidget {
    AddBalanceScreen({Key? key}) : super(key: key);



  static List<String> id = [
   "card 1 " ,
   "card 2 " ,
  ];

    dynamic selectChoiceId = id[0];


    @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
            needIconBell: true,
            customSize: media.height * .12,
            title: 'تغذية المحفظة',
            needBackButton: true,
            ),
        drawer: MainDrawer(),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer:    DrawerComponent(),
        body: GeneralPadding(
            child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextComponent(
                    text: "الرصيد الحالي في المحفظة",
                    colorText: Colors.black,
                    fontSize: 20.0,
                  ),
                ],
              ),
              SpaceComponent(height: media.height*.03,) ,
              Row(
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 4,
                    child: TextComponent(
                      text: "210.540",
                      isBold: true,
                      colorText: Colors.green,
                      fontSize: 50.0,
                      fontFamily: "Anton",
                    ),
                  ),
                  SpaceComponent(
                    width: media.width * .02,
                  ),
                  Expanded(
                    child: Container(
                      height: media.height*.04,
                      alignment: Alignment.bottomLeft,
                      child: TextComponent(
                        text: "SDG",
                        colorText: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              SpaceComponent(height: media.height * .08),
              const Text("المبلغ" , textAlign: TextAlign.right) ,
              CustomTextField(controller: TextEditingController() ),
              SpaceComponent(height: media.height * .04),
                  const Text(" من البطاقة", textAlign: TextAlign.right) ,
                  DropList(list: id , value: selectChoiceId ,styleBorder: 15.0),
              SpaceComponent(height: media.height * .04),
                  const Text(" رمز المرور", textAlign: TextAlign.right) ,
                  CustomTextField(controller: TextEditingController()),
                  SpaceComponent(height: media.height * .05),
                  GeneralButton(
                      height: media.height*.06,
                      width: media.width*.002,
                      color: Colors.green,
                      onPressed: (){
                    /// TODO : Here ////////////////////
                  }, child:  TextComponent(text : "تغذية" ,colorText: Colors.white,fontSize: 18.0,))
            ])));
  }
}
