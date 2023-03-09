
import 'package:flutter/material.dart';

import '../../components/app_bar/appbar_component.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../controller/controllers.dart';

class DetailsDataa extends StatelessWidget {
  const DetailsDataa({Key? key}) : super(key: key);

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
      body: GeneralPadding(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 13,
              itemBuilder: (context, index) {
                final detailsData = Controller.demoDetailsData[index];
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          detailsData.data,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          detailsData.address,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 150.0,
                    child: GeneralButton(
                      onPressed: () {
                        /// TODO : مشاركة
                      },
                      color: Colors.indigo,
                      child: const Text(
                        "مشاركة",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                  width: 150.0,
                  child: GeneralButton(
                    onPressed: () {
                      /// TODO : PDF
                    },
                    color: Colors.indigo,
                    child: const Text(
                      "PDF",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
