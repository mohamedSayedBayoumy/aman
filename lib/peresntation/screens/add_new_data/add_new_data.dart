// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/space_component.dart';
import '../../components/textfiled_component.dart';

class AddNewData extends StatelessWidget {
  AddNewData({Key? key}) : super(key: key);



  static List<String> listOfBank = ["الاهلي", "البركة"];

  static List<String> listOfBranch = [
    "الشيخ زايد",
    "التجمع",
    "مصر الجديده",
  ];
  static List<String> typeAccount = [
    "توفير",
    "ادخال",
    "اخري",
  ];

  dynamic banKController = listOfBank[0];
  dynamic branchController = listOfBranch[1];
  dynamic typeAccountController = typeAccount[0] ;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Column(
      children: [
        DropList(list: listOfBank, value: banKController),
        SpaceComponent(),
        DropList(list: listOfBranch, value: branchController),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "رقم الحساب",
        ),
        SpaceComponent(),
        DropList(list: typeAccount, value: typeAccountController),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "نوع الحساب",
        ),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),     /// <= show this when he choose "اخري"
          labelText: "بطاقة الصرف",
        ),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "بطاقة الصرف",
        ),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "تاريخ الصلاحيه البطاقة",
          textInputType: TextInputType.number,
        ),
          GeneralButton(width: media.width*2 ,onPressed: (){},color: Colors.indigo, child: const Text("حفظ") ,)
      ],
    );
  }
}
