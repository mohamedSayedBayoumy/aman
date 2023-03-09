import 'package:flutter/material.dart';

import '../../../model.dart';
import '../../components/app_bar/appbar_component.dart';
import '../../components/genral_padding.dart';

class AddNewTransfer extends StatelessWidget {
  AddNewTransfer({Key? key}) : super(key: key);

  List data = [
    DetailsDataModel(address: "", data: "محمد احمد الامين"),
    DetailsDataModel(address: "", data: "محمد احمد الامين"),
    DetailsDataModel(address: "", data: "محمد احمد الامين"),
    DetailsDataModel(address: "", data: "محمد احمد الامين"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NaturalAppBar(title: "تحويل جديد", needIconBell: null,),
      body: GeneralPadding(
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              onTap: () {
                /// TODO : Add New client
              },
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.indigo,
                  )),
              title: const Text(
                "أضافة مستفيد جديد",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      /// TODO : Navigate to details card
                    },
                    child: Container(
                      width: media.width * .2,
                      height: media.height * .15,
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * .06),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            data[index].data,
                            style: const TextStyle(
                                fontSize: 25, color: Colors.indigo),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    /// TODO :   Transfer Action
                                  },
                                  child: const Text(
                                    "التفاصيل",
                                    style: TextStyle(fontSize: 15),
                                  )),
                              Container(
                                width: media.width * .002,
                                height: media.height * .03,
                                color: Colors.black87,
                              ),
                              TextButton(
                                  onPressed: () {
                                    /// TODO :  Details Action
                                  },
                                  child: const Text(
                                    "تحويل",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.indigo),
                                  )),
                            ],
                          )
                        ],
                      ),
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
