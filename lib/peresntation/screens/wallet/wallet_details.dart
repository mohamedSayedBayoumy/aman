import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../model.dart';
import '../../components/Directionality_component.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../drawer.dart';
import '../transactions_screens/current_transactions.dart';
import 'add_balance_screen.dart';

class MyWallet extends StatelessWidget {
  MyWallet({Key? key}) : super(key: key);

  List<dynamic> icons = [
    Image.asset("assets/outgoing-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/outgoing-call.png"),
    Image.asset("assets/outgoing-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/incoming-call.png"),
  ];

  static List<AccountData> data = [
    AccountData(
        nameAr: "محمد سيد بيومي", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "محمد عبدالله احمد", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
  ];

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
      endDrawer: DrawerComponent(),
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
                      text: "210.540",
                      isBold: true,
                      colorText: Colors.green,
                      fontSize: 50.0,
                      fontFamily: "Anton",
                    ),

                  SpaceComponent(
                    width: media.width * .02,
                  ),
                   Container(
                      height: media.height*.04,
                      alignment: Alignment.bottomLeft,
                      child: TextComponent(
                        text: "SDG",
                        colorText: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),

                ],
              ),

            SpaceComponent(height: media.height * .04),
            DirectionalityComponent(
              child: GeneralButton(
                  height: media.height * .06,
                  color: Colors.green,
                  elevation: 12.0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddBalanceScreen()));
                  },
                  child: Row(
                    children: [ 
                      SpaceComponent(width: media.width * .05),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SpaceComponent(width: media.width * .09),
                      TextComponent(
                        text: "تغذية المحفظة",
                        colorText: Colors.white,
                      ),
                    ],
                  )),
            ),
            SpaceComponent(height: media.height * .05),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return DirectionalityComponent(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: media.height * .02),
                    child: Container(
                      width: media.width * .03,
                      padding: EdgeInsets.only(bottom: media.height * .006),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black87))),
                      child: Column(children: [
                        Row(
                          children: [
                            IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentTransactionsScreen(showWidget: true,),)) ;
                            }, icon: icons[index]),
                            TextComponent(
                              text: data[index].nameAr,
                              fontSize: 18.0,
                            ),
                            const Spacer(),
                            TextComponent(
                              text: data[index].count,
                              fontSize: 18.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextComponent(
                              text: data[index].date,
                              fontSize: 18.0,
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
