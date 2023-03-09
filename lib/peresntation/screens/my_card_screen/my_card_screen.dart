import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../drawer.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
            customSize: media.height * .12,
            needIconBell: true,
            title: "بطاقتي"),
        drawer: MainDrawer(),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer: DrawerComponent(),
        body:  
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              GeneralPadding(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                            child: IconButton(
                              onPressed: () {
                                /// TODO : Change Image
                              },
                              icon: Image.asset("assets/icons/add.png"),
                              iconSize: media.height * .002,
                            )),
                      ],
                    ),
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                            width: media.width,
                            height: media.height * .2,
                            margin:
                            EdgeInsets.symmetric(vertical: media.height * .04),
                            padding:
                            EdgeInsets.symmetric(horizontal: media.width * .03),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(25.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/credit-card.png",
                                      width: media.width * .15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextComponent(
                                              text: "2525 **** **** ****",
                                              fontSize: media.width * .04,
                                              colorText: Colors.black87),
                                          TextComponent(
                                              text: " رقم البطاقة :",
                                              fontSize: media.width * .04,
                                              colorText: Colors.black87),
                                        ],
                                      ),
                                      Container(
                                        width: media.width * .3,
                                        color: Colors.black,
                                        height: media.height * .001,
                                      ),
                                      SpaceComponent(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextComponent(
                                              text: "AL-Rajhi",
                                              fontSize: media.width * .04,
                                              colorText: Colors.black87),
                                          TextComponent(
                                              text: "الاسم :",
                                              fontSize: media.width * .04,
                                              colorText: Colors.black87),
                                        ],
                                      ),
                                      SpaceComponent(
                                        height: media.height * .02,
                                      ),
                                      Container(
                                        width: media.width * .3,
                                        color: Colors.black,
                                        height: media.height * .001,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextComponent(
                                              text: "12/17",
                                              fontSize: media.width * .04,
                                              colorText: Colors.black87),
                                          TextComponent(
                                              text: " تاريخ الانتهاء ",
                                              fontSize: media.width * .04,
                                              colorText: Colors.black87),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // Column(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: [
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         TextComponent(text: "2525 **** **** ****" ,fontSize: media.width*.04,colorText: Colors.black87),
                                  //         TextComponent(text: " رقم البطاقة : " ,fontSize: media.width*.04 ,colorText: Colors.black87),
                                  //       ],
                                  //     ) ,
                                  //     Divider(color: Colors.black87 ,height: media.height*.02 ,indent: media.width*.3),
                                  //     Row(
                                  //       mainAxisSize: MainAxisSize.min,
                                  //       children: [
                                  //         Image.asset("assets/credit-card.png" , width: media.width*.15),
                                  //         const Spacer() ,
                                  //         TextComponent(text: "2525 **** **** ****" ,fontSize: media.width*.04,colorText: Colors.black87),
                                  //         TextComponent(text: " رقم البطاقة : " ,fontSize: media.width*.04 ,colorText: Colors.black87),
                                  //       ],
                                  //     ) ,
                                  //     Divider(color: Colors.black87 ,height: media.height*.02 ,indent: media.width*.3),
                                  //     Row(
                                  //       mainAxisAlignment: MainAxisAlignment.end,
                                  //       children: [
                                  //         TextComponent(text: "2525 **** **** ****" ,fontSize: media.width*.04,colorText: Colors.black87),
                                  //         TextComponent(text: " رقم البطاقة : " ,fontSize: media.width*.04 ,colorText: Colors.black87),
                                  //       ],
                                  //     ) ,
                                  //   ],
                                  // )
                                ]));
                      },
                    ),
                  ],
                ),
              )
              
            ],
          ),
    );
  }
}
