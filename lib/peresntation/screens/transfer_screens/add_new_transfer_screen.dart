import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/transfer_screens/details_data.dart';
import 'package:test2/peresntation/screens/transfer_screens/transfer_way_screen.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../drawer.dart';
import '../add_new_data/add_new_cilent.dart';


class AddNewTransferScreen extends StatelessWidget {
  const AddNewTransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        needIconBell: true,
        needBackButton: true,
        customSize: media.height * .12,
        title: 'تحويل جديد',
      ),
      drawer: MainDrawer(),
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
                  return Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: media.width,
                          height: media.height * .18,
                          padding: EdgeInsets.symmetric(
                              horizontal: media.width * .04  ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SpaceComponent() ,
                               Expanded(
                                 flex: 2,
                                 child: TextComponent(
                                      text: "محمد سيد بيومي محمد ابراهيم محمد سيد بيومي محمد ابراهيم محمد سيد بيومي محمد ابراهيم",
                                      colorText: Colors.black87,
                                      isBold: true,
                                      fontSize: 23.0),
                               ),
                              Expanded(
                               flex: 1,
                                child: TextComponent(
                                    text: "21/9/2023 \n 12:30",
                                    colorText: Colors.black87,
                                    fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SpaceComponent(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GeneralButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsTransferScreen(showWidget: true,),
                                    ));
                              },
                              color: Colors.indigo,
                              height: media.height * .05,
                              elevation: 12.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "تفاصيل",
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
                          ),
                          SpaceComponent() ,
                          Expanded(
                            child: GeneralButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      const TransferWayScreen(),
                                    ));

                              },
                              color: Colors.indigo,
                              height: media.height * .05,
                              elevation: 12.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "تحويل",
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
                          ),
                        ],
                      ),
                      SpaceComponent(
                        height: media.height * .03,
                      ),
                    ],
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
