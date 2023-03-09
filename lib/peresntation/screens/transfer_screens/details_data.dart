// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:test2/peresntation/components/space_component.dart';
import 'package:test2/peresntation/drawer.dart';

import '../../../model.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../components/text_component.dart';

class DetailsTransferScreen extends StatelessWidget {
  bool showWidget;

  DetailsTransferScreen({required this.showWidget, Key? key})
      : super(key: key);

  List<DetailsDataModel> data = [
    DetailsDataModel(address: "الرقم التسلسلي للعملية", data: "محمد عبدالله"),
    DetailsDataModel(
        address: "تاريخ و وقت تنفيذ العمليه", data: "15/3/2023 - 12:30"),
    DetailsDataModel(address: "اسم المستلم", data: "احمد علي"),
    DetailsDataModel(address: "رقم هاتف المستلم", data: "989898989"),
    DetailsDataModel(address: "البلد و المدينه", data: "السودان - الخرطوم"),
  ];

  List<DetailsDataModel> data2 = [
    DetailsDataModel(address: "اسم البنك", data: "بنك البركة"),
    DetailsDataModel(address: "الفرع", data: "الرئيسية"),
    DetailsDataModel(address: "رقم الحساب", data: "12345"),
  ];

  List<DetailsDataModel> data3 = [
    DetailsDataModel(address: "المبلغ بعملة المرسل", data: "1000"),
    DetailsDataModel(address: "المبلغ بالجنية", data: "15000"),
    DetailsDataModel(address: "سعر الصرف", data: "150"),
    DetailsDataModel(address: "رسوم العملية", data: "12"),
    DetailsDataModel(address: "اجمالي المدفوع", data: "1234"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needBackButton: true,
          needIconBell: true,
          customSize: media.height * .12,
          title: "تفاصيل التحويل"),
      drawer: MainDrawer(),
      endDrawer: DrawerComponent(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: media.height*.03,horizontal: media.width * .05),
            child: Column(
              children: [
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(

                      height: media.height * .05,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: TextComponent(
                                text: data[index].data,
                                colorText: Colors.black54,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextComponent(
                              text: data[index].address,
                              colorText: Colors.black87,
                              fontSize: 17.0,
                              isBold: true,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Divider(color: Colors.black, height: media.height * .01),
                AnimatedCrossFade(
                    firstChild: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data2.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: media.height * .05,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: TextComponent(
                                        text: data2[index].data,
                                        colorText: Colors.black54,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextComponent(
                                      text: data2[index].address,
                                      colorText: Colors.black87,
                                      fontSize: 17.0,
                                      isBold: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    secondChild: Container(),
                    crossFadeState: showWidget == true
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 800)),
                showWidget == true ? Divider(color: Colors.black, height: media.height * .01) : Container(),
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data3.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: media.width,
                      height: media.height * .05,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: TextComponent(
                                text: data3[index].data,
                                colorText: Colors.black54,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: TextComponent(
                              text: data3[index].address,
                              colorText: Colors.black87,
                              fontSize: 17.0,
                              isBold: true,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Row(

            children: [
              Expanded(
                flex: 1,
                child: GeneralButton(
                  onPressed: () {},
                  color: Colors.indigo,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: media.height * .002),
                          alignment: Alignment.center,
                          child: TextComponent(
                            text: "استفسار",
                            colorText: Colors.white,
                            fontSize: 16.0,
                            isBold: true,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Icon(Icons.info_outline),
                      ),
                    ],
                  ),
                ),
              ),
              SpaceComponent() ,
              Expanded(

                child: GeneralButton(
                  onPressed: () {},
                  color: Colors.indigo,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: media.height * .002),
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: TextComponent(
                            text: "التفاصيل",
                            colorText: Colors.white,
                            fontSize: 16.0,
                            isBold: true,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: const Icon(Icons.wysiwyg_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              SpaceComponent() ,
              Expanded(

                child: GeneralButton(
                  onPressed: () {},
                  color: Colors.indigo,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: media.height * .004),
                          alignment: Alignment.center,
                          child: TextComponent(
                            text: "مشاركة",
                            colorText: Colors.white,
                            fontSize: 16.0,
                            isBold: true,
                          ),
                        ),
                      ),
                      const Expanded(child: const Icon(Icons.ios_share)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
