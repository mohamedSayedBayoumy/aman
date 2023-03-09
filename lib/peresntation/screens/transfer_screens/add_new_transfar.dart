// import 'package:aman/peresntation/components/app_bar/appbar_component.dart';
// import 'package:aman/peresntation/components/genral_padding.dart';
// import 'package:flutter/material.dart';
//
// import '../../../model.dart';
//
// class AddNewTransfer extends StatelessWidget {
//   AddNewTransfer({Key? key}) : super(key: key);
//
//   List data = [
//     DetailsDataModel(address: "", data: "محمد احمد الامين"),
//     DetailsDataModel(address: "", data: "محمد احمد الامين"),
//     DetailsDataModel(address: "", data: "محمد احمد الامين"),
//     DetailsDataModel(address: "", data: "محمد احمد الامين"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: NaturalAppBar(title: "تحويل جديد"),
//       body: GeneralPadding(
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             ListTile(
//               onTap: () {
//                 /// TODO : Add New client
//               },
//               trailing: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.add,
//                     color: Colors.indigo,
//                   )),
//               title: const Text(
//                 "أضافة مستفيد جديد",
//                 textAlign: TextAlign.right,
//                 style: TextStyle(
//                   color: Colors.indigo,
//                 ),
//               ),
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8),
//                   child: GestureDetector(
//                     onTap: () {
//                       /// TODO : Navigate to details card
//                     },
//                     child: Container(
//                       width: media.width * .2,
//                       height: media.height * .15,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: media.width * .06),
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black54),
//                           color: Colors.grey.shade200,
//                           borderRadius: BorderRadius.circular(25)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             data[index].data,
//                             style: const TextStyle(
//                                 fontSize: 25, color: Colors.indigo),
//                           ),
//                           const Spacer(),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                   onPressed: () {
//                                     /// TODO :   Transfer Action
//                                   },
//                                   child: const Text(
//                                     "التفاصيل",
//                                     style: TextStyle(fontSize: 15),
//                                   )),
//                               Container(
//                                 width: media.width * .002,
//                                 height: media.height * .03,
//                                 color: Colors.black87,
//                               ),
//                               TextButton(
//                                   onPressed: () {
//                                     /// TODO :  Details Action
//                                   },
//                                   child: const Text(
//                                     "تحويل",
//                                     style: TextStyle(
//                                         fontSize: 15, color: Colors.indigo),
//                                   )),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/transfer_screens/transfer_way_screen.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';

class AddNewTransfer extends StatelessWidget {
  AddNewTransfer({Key? key}) : super(key: key);


  static List<String> country = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];


  static List<String> city = [
    "القاهرة",
    "لبن",
    "حلب",
  ];

  static List<String>  id = [
    "ائتمان",
    "اخري",
      ];

  static List<String> clients = [
     "محمد سيد بيومي" ,
    "احمد محمد خالد"
  ];

  static List<String> currencies = [
    "مصري" ,
    "ريال سعودي" ,
    "امريكي"
  ];
  static List<String> purposeFromTransfer = [
    "سلف",
    "سد دين" ,
    "قرض" ,
  ];

  dynamic selectChoiceId = country[1]  ;
  dynamic cityController = city[1];
  dynamic chooseIdController = id[0];
  dynamic clientsController = clients[1];
  dynamic currenciesController = currencies[1];
  dynamic purposeFromTransferController = purposeFromTransfer[1];


  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        needIconBell: true,
          customSize: media.height * .12,
          title: 'تحويل جديد',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer:    DrawerComponent(),
      body: GeneralPadding(
        child: ListView(
          shrinkWrap: true,
          children: [
            DropList(list: country, value: selectChoiceId  ),
            SpaceComponent(height: media.height * .02),
            DropList(list: city, value: cityController),
            SpaceComponent(height: media.height * .02),
            DropList(list: id, value: chooseIdController),
            SpaceComponent(height: media.height * .02),
            DropList(list: clients, value: clientsController),
            SpaceComponent(height: media.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextField(
                  controller: TextEditingController(),
                  width: media.width * .3,
                  borderColor: Colors.black,
                ),
                DropList(
                    list: currencies, value: currenciesController, width: media.width * .4),
              ],
            ),
            SpaceComponent(height: media.height * .02),
            DropList(list: purposeFromTransfer, value: purposeFromTransferController),
            SpaceComponent(height: media.height * .02),
            CustomTextField(
                controller: TextEditingController(),
                maxLength: 5,
                labelText: "ملاحظات",
                labelColor: Colors.black87 ,
              borderColor: Colors.black,
            ),
            SpaceComponent(height: media.height * .03),
            GeneralButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransferWayScreen(),
                    ));
              },
              color: Colors.indigo,
              height: media.height * .05,
              child:  TextComponent(text : "تحويل" ,isBold: true ,fontSize: 18.0 ,colorText: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
