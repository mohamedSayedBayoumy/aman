
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/transfer_screens/tranfer_screen.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';

class TransferWayScreen extends StatefulWidget {
  const TransferWayScreen({Key? key}) : super(key: key);

  @override
  State<TransferWayScreen> createState() => _TransferWayScreenState();
}

class _TransferWayScreenState extends State<TransferWayScreen> {
  static List<String> data = [
    "الغرض من التحويل",
    "سد دين",
    "سلف",
    "اخري",
  ];
  dynamic dataController = data[0];

  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool showTextField = false;

  TextEditingController purposeController = TextEditingController();


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

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          title: 'اختيار طريقة التسليم',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer: DrawerComponent(),
      body: GeneralPadding(
        child: ListView(
          children: [
            SpaceComponent(),
            Row(

              /// TODO : Select one check Box
              children: [
                const Text("ايداع بنكي"),
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isCheckedOne,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedOne = value!;
                    });
                  },
                ),
                const Spacer(),
                const Text("تسليم نقدي"),
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isCheckedTwo,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedTwo = value!;
                    });
                  },
                ),
              ],
            ),
            SpaceComponent(),
            DropList(list: data, value: dataController, onChange: (value) {
              setState(() {
                dataController = value;
              });
              if (dataController == "اخري") {
                setState(() {
                  showTextField = true;
                });
              } else {
                setState(() {
                  showTextField = false;
                });
              }
            },),
            SpaceComponent(
              height: media.height * .02,
            ),
            AnimatedCrossFade(
              firstChild: Container(),
              secondChild: Padding(
                padding: EdgeInsets.only(top: media.height * .01),
                child: CustomTextField(
                  borderColor: Colors.black,
                  controller: purposeController,
                  labelText: "الرجاء كتابة الغرض",
                ),
              ),
              crossFadeState: showTextField == false
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 800),
            ),

            SpaceComponent(
              height: media.height * .02,
            ),
            GeneralButton(
              width: media.width * 2,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransferScreen(),)) ;
              },
              color: Colors.indigo,
              child: TextComponent(
                  text: "التالي", colorText: Colors.white, fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
