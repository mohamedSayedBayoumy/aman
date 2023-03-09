// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../model.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import 'current_transactions.dart';

class LastTransaction extends StatelessWidget {
  LastTransaction({Key? key}) : super(key: key);

  List<String> icons = [
    "assets/tick.png",
    "assets/reload.png",
    "assets/cancel.png",
    "assets/reload.png",
    "assets/reload.png",
    "assets/tick.png",
    "assets/reload.png",
    "assets/reload.png",
  ];

  List<dynamic> colors = [
    Colors.green,
    Colors.grey,
    Colors.red,
    Colors.grey,
    Colors.grey,
    Colors.green,
    Colors.grey,
    Colors.grey,
  ];

  static List<DemoDataModel> demoDataList = const [
    // ignore: prefer_const_constructors
    DemoDataModel(
        name: "محمد سيد بيومي",
        status: "نجاح",
        amount: "20000 ج س ",
        number: "الرقم 123456 ",
        date: "1-1-2023\n12:30",
        pdf: "pdf",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        name: "محمد سيد",
        status: "نجاح",
        amount: "20000 ج س ",
        number: "الرقم 123456 ",
        date: "1-1-2023\n12:30",
        pdf: "pdf",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        name: "محمد احمد علي",
        status: "فشل",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023\n12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        name: "محمد احمد علي",
        status: "قيد التنفيذ",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023\n12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        name: "محمد احمد علي",
        status: "قيد التنفيذ",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023\n12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        name: "محمد احمد علي",
        status: "قيد التنفيذ",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023\n12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        name: "محمد احمد علي",
        status: "قيد التنفيذ",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023\n12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          onPressedButtonMenu: () {
            /// TODO  :
          },
          onPressedButtonBack: () {
            /// TODO  :
          },
          title: "المعاملات السابقة"),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer: DrawerComponent(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: media.width * .04, vertical: media.height * .02),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: demoDataList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  child: Container(
                    width: media.width,
                    height: media.height * .20,
                    padding:
                        EdgeInsets.symmetric(horizontal: media.width * .04),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/user.png",
                                height: media.height * .1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextComponent(
                                    text: "ريال",
                                    fontSize: 15.0,
                                    colorText: Colors.black87,
                                  ),
                                  TextComponent(
                                      text: "2.340",
                                      fontSize: 28.0,
                                      colorText: colors[index],
                                      isBold: true),
                                ],
                              ),
                              TextComponent(
                                text: "#051561861",
                                colorText: Colors.black87,
                                fontSize: 15.0,
                              )
                            ],
                          ),
                        ),
                        SpaceComponent(
                          width: media.width * .12,
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: media.width * .4,
                                child: TextComponent(
                                    text: demoDataList[index].name,
                                    colorText: Colors.black87,
                                    isBold: true,
                                    fontSize: 23.0),
                              ),
                              SpaceComponent(
                                width: media.width * .03,
                              ),
                              TextComponent(
                                text: demoDataList[index].date,
                                colorText: Colors.black87,
                                fontSize: 20.0,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              icons[index],
                              height: media.height * .04,
                            )),
                      ],
                    ),
                  ),
                ),
                SpaceComponent(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralButton(
                      onPressed: () {},
                      color: Colors.indigo,
                      height: media.height * .05,
                      width: media.width * .4,
                      elevation: 12.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "مشاركة",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SpaceComponent(),
                          const Icon(Icons.ios_share),
                        ],
                      ),
                    ),
                    GeneralButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CurrentTransactionsScreen(showWidget: true),
                            ));
                      },
                      color: Colors.indigo,
                      height: media.height * .05,
                      width: media.width * .4,
                      elevation: 12.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "التفاصيل",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SpaceComponent(),
                          const Icon(Icons.wysiwyg_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
                SpaceComponent(
                  height: media.height * .03,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
