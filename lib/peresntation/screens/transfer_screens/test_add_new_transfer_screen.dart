import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/transfer_screens/transfer_way_screen.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../add_new_data/add_new_cilent.dart';
import 'details_transfer.dart';



class AddNewTransferScreen extends StatelessWidget {
  const AddNewTransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          title: 'تحويل جديد',
          onPressedButtonBack: () {
            Navigator.pop(context);
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer: DrawerComponent(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          GeneralPadding(
              child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddNewClient(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextComponent(
                        isBold: true,
                        text: "اضافة مستفيد جديد",
                        fontSize: 20.0,
                        colorText: Colors.black87),
                    const Icon(Icons.add, color: Colors.indigo),
                  ],
                ),
              ),
              SpaceComponent(height: media.height * .03),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: media.height * .03),
                    padding:
                        EdgeInsets.symmetric(horizontal: media.width * .03),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Colors.black, width: media.height * .002)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextComponent(
                                fontSize: 25.0,
                                text: "محمد احمد امين",
                                colorText: Colors.indigoAccent)
                          ],
                        ),
                        SpaceComponent(
                          height: media.height * .05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsTransfer(),
                                      ));
                                },
                                child: TextComponent(
                                    text: "تفاصيل",
                                    colorText: Colors.black87,
                                    fontSize: 20.0)),
                            Container(
                                width: 1,
                                color: Colors.black,
                                height: media.height * .03),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TransferWayScreen(),
                                      ));
                                },
                                child: TextComponent(
                                    text: "تحويل",
                                    colorText: Colors.black87,
                                    fontSize: 20.0)),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}
