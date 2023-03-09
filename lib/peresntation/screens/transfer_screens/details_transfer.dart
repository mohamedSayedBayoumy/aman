import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../components/Directionality_component.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../../model.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';

class DetailsTransfer extends StatelessWidget {
  DetailsTransfer({Key? key}) : super(key: key);

  List data = [
    DetailsDataModel(address: "الوقت و التاريخ", data: "15/3/2023"),
    DetailsDataModel(address: "الدولة", data: "السعودية"),
    DetailsDataModel(address: "المدينه", data: "الرياض"),
    DetailsDataModel(address: "من البطاقة", data: "5555 9999 5555 9999"),
    DetailsDataModel(address: "المستفيد", data: "محمد عبدالله احمد"),
    DetailsDataModel(address: "العملة", data: "ريال سعودي"),
    DetailsDataModel(address: "المبلغ المحول", data: "1.123"),
    DetailsDataModel(address: "الغرض من التحويل", data: "مصاريف"),
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
          title: "تفاصيل التحويل"),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer:    DrawerComponent(),
      body: DirectionalityComponent(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: media.width * .03, vertical: media.height * .02),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              width: media.width,
              height: media.height * .7,
              padding:   EdgeInsets.all(media.height*.03),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: media.width,
                        height: media.height * .05,
                        margin: EdgeInsets.only(bottom: media.height * .02),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: media.width * .30,
                              height: media.height * .03,
                              alignment: Alignment.centerRight,
                              child: TextComponent(
                                text: data[index].address,
                                colorText: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            SpaceComponent(
                              width: media.width * .09,
                            ),
                            Container(
                              width: media.width * .39,
                              height: media.height * .03,
                              alignment: Alignment.centerRight,
                              child: TextComponent(
                                text: data[index].data,
                                colorText: Colors.white,
                                fontSize: 17.0,
                                isBold: true,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      TextComponent(
                        text: "الملاحظات",
                        colorText: Colors.white,
                        fontSize: 20.0,
                      ),
                      SpaceComponent(
                        width: media.width * .03,
                      ),
                      TextComponent(
                        text: "",
                        colorText: Colors.white,
                        fontSize: 15.0,
                        isBold: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // const Divider(),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: data1.length,
            //   itemBuilder: (context, index) {
            //     return Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text(
            //               data1[index].data,
            //               style: const TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 20,
            //                   color: Colors.indigo),
            //             ),
            //             SpaceComponent(),
            //             Text(
            //               data1[index].address,
            //               style: const TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 20,
            //                   color: Colors.indigo),
            //             ),
            //           ],
            //         ),
            //         SpaceComponent(),
            //       ],
            //     );
            //   },
            // ),
            // const Divider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [                      /// Clear const
            //     Text(
            //       "6.065",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20,
            //           color: Colors.indigo)),
            //     Text(
            //       "المجموع",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20,
            //           color: Colors.indigo)),
            //
            //   ],
            // )  ,
            // SpaceComponent(),
            SpaceComponent(
              height: media.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GeneralButton(
                    width: media.width * .5,
                    onPressed: () {},
                    color: Colors.indigo,
                    height: media.height * .05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:   [
                        const Icon(Icons.home_outlined) ,
                        SpaceComponent(),
                          TextComponent(
                          text : "الرئيسة",
                          colorText: Colors.white ,
                          isBold: true ,
                          fontSize: 18.0,

                        ),
                      ],
                    )),
                GeneralButton(
                  width: media.width * .4,
                  onPressed: () {},
                  color: Colors.indigo,
                  height: media.height * .05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                      const Icon(Icons.ios_share) ,
                      SpaceComponent(),
                      TextComponent(
                        text : "مشاركة",
                        colorText: Colors.white ,
                        isBold: true ,
                        fontSize: 18.0,

                      ),
                    ],
                  ) ,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
