import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/transfer_screens/transfer_data_confirmation.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';

class TransferScreen extends StatefulWidget {
  TransferScreen({Key? key}) : super(key: key);

  static List<String> data = [
    "العملة",
    "جنية",
    "جنية استريلني",
    "دولار",
    "يورو",
  ];
  static List<String> data1 = [
    "طريقة الدفع",
    "بطاقة ائتمان",
    "بطاقة الخصم",
  ];

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  dynamic dataController = TransferScreen.data[0];

  dynamic data1Controller = TransferScreen.data1[0];

  bool controller = true;

  TextEditingController fromControllerOne = TextEditingController();
  TextEditingController fromControllerTwo = TextEditingController();

  TextEditingController toController = TextEditingController();

  void sum() {
    if (fromControllerOne.text.isEmpty) {
      setState(() {
        toController.text = '';
      });
    } else {
      var myInt = int.parse(fromControllerOne.text);
      assert(myInt is int);
      var sum = myInt * 2;
      setState(() {
        toController.text = sum.toString();
        print("to : ${toController.text}");
      });
    }
  }

  //
  void sum2() {
    if (toController.text.isEmpty) {
      setState(() {
        fromControllerTwo.text = "";
      });
    } else {
      var myInt = int.parse(toController.text);
      assert(myInt is int);
      var sum = myInt / 2;
      setState(() {
        fromControllerTwo.text = sum.toString();
        print("from : ${fromControllerTwo.text}");
      });
    }
  }

  @override
  void initState() {
    fromControllerOne.addListener(() {
      sum();
    });

    toController.addListener(() {
      sum2();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          title: 'التحويل',
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
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            DropList(list: TransferScreen.data, value: dataController),
           SizedBox(
             height: media.height*.09,
                child: AnimatedCrossFade(
                    firstChild: Padding(
                      padding: EdgeInsets.only(top: media.height * .03),
                      child: CustomTextField(
                        textInputType: TextInputType.number,
                        controller: fromControllerOne,
                        labelText: "المبلغ المراد تحويله",
                      ),
                    ),
                    secondChild: Padding(
                        padding: EdgeInsets.only(top: media.height * .03),
                        child: CustomTextField(
                          onTap: () {
                            setState(() {
                              controller = !controller;
                              toController.clear();
                            });
                          },
                          textInputType: TextInputType.number,
                          controller: fromControllerTwo,
                          labelText: "المبلغ المراد تحويله",
                        )),
                    crossFadeState: controller == true
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 0)),
              ),

            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              onTap: () {
                setState(() {
                  controller = !controller;
                  fromControllerOne.clear();
                });
              },
              textInputType: TextInputType.number,
              controller: toController,
              labelText: "المبلغ المراد استلامه",
              fill: false,
            ),
            SpaceComponent(
              height: media.height * .03,
            ),
            DropList(list: TransferScreen.data1, value: data1Controller),
            SpaceComponent(
              height: media.height * .03,
            ),
            GeneralButton(
              width: media.width * 2,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationTransferDataScreen(),
                    ));
              },
              color: Colors.indigo,
              height: media.height * .05,
              child: TextComponent(
                text: "حفظ",
                fontSize: 16.0,
                colorText: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
