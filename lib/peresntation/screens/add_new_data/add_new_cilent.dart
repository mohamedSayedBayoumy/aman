// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/function/Alert.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';

class AddNewClient extends StatefulWidget {
  const AddNewClient({Key? key}) : super(key: key);

  @override
  State<AddNewClient> createState() => _AddNewClientState();
}

class _AddNewClientState extends State<AddNewClient> {
  static List<String> receiveCountries = [
    "بلد المستلم",
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

  static List<String> receiveCountries2 = [
    "ولاية المستلم",
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];
  static List<String> receiveCountries3 = [
    "مدينة المستلم",
    "جواز سفر",
    "بطاقة",
    "رخصة قيادة",
  ];

  static List<String> relationship = [
    "العلاقة مع المستفيد",
    "جار",
    "صديق",
    "بن عم",
    "وسيط مني",
    "وسيط من عميل اخر",
    "اخري",
  ];
  static List<String> listOfBank = ["البنك", "الاهلي", "البركة"];

  static List<String> listOfBranch = [
    "الفرع",
    "الشيخ زايد",
    "التجمع",
    "مصر الجديده",
  ];
  static List<String> typeAccount = [
    "نوع الحساب",
    "توفير",
    "ادخال",
    "اخري",
  ];

  dynamic banKController = listOfBank[0];
  dynamic branchController = listOfBranch[0];
  dynamic typeAccountController = typeAccount[0];

  dynamic receiveCountriesController = receiveCountries[0];

  dynamic receiveCountriesController1 = receiveCountries2[0];

  dynamic receiveCountriesController2 = receiveCountries3[0];
  dynamic relationshipController = relationship[0];

  bool needAdd = false;

  bool showTextField = false;

  bool showTextFieldOfTypeAccount = false;

  TextEditingController nameEn = TextEditingController();

  TextEditingController nameAr = TextEditingController();

  TextEditingController relationshipControllerTextField =
      TextEditingController();

  TextEditingController expireDataController = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController accountNumberController = TextEditingController();

  TextEditingController ATMNumberController = TextEditingController();
  TextEditingController AddNewPhoneController = TextEditingController();

  TextEditingController confirmationATMNumberController =
      TextEditingController();

  Future<void> calendarDate() async {
    DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(3000));
    if (newDate == null) return;
    setState(() {
      var date = newDate
          .toString()
          .replaceAll("]", "")
          .replaceAll("[", "")
          .replaceAll("}", "")
          .replaceAll("00:00:00.000", "");
      String value = "${newDate.year} / ${newDate.month} }";
      print(value.toString());
      expireDataController.text = value.toString().replaceAll("}", "");
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          title: "مستفيد جديد",
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
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            DropList(list: receiveCountries, value: receiveCountriesController),
            SpaceComponent(),
            DropList(
                list: receiveCountries2, value: receiveCountriesController1),
            SpaceComponent(),
            DropList(
                list: receiveCountries3, value: receiveCountriesController2),
            SpaceComponent(),
            CustomTextField(
              controller: nameAr,
              labelText: "اسم المستلم باللغة العريبه",
            ),
            SpaceComponent(),
            CustomTextField(
              controller: nameEn,
              labelText: "اسم المستلم باللغة الانجليزية",
            ),
            SpaceComponent(),
            DropList(
                onChange: (value) {
                  setState(() {
                    relationshipController = value;
                  });
                  if (relationshipController == "اخري") {
                    setState(() {
                      showTextField = true;
                    });
                  } else {
                    setState(() {
                      showTextField = false;
                    });
                  }
                },
                list: relationship,
                value: relationshipController),
            SpaceComponent(),
            AnimatedCrossFade(
              firstChild: Container(),
              secondChild: Padding(
                padding: EdgeInsets.only(top: media.height * .01),
                child: CustomTextField(
                  controller: relationshipControllerTextField,
                  labelText: "نص العلاقة مع المستفيد",
                ),
              ),
              crossFadeState: showTextField == false
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 800),
            ),
            SpaceComponent(),
            Container(
              height: media.height * .06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        alertDialog(context,
                            child: Container(
                              width: media.width,
                              height: media.height*.3,
                              child: ListView(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                children: [
                                  CustomTextField(
                                    textInputType: TextInputType.number,
                                    controller: AddNewPhoneController,
                                    labelText: "اضافة هاتف جديد",
                                  ),
                                  GeneralButton(
                                    width: media.width * 2,
                                    onPressed: () {},
                                    color: Colors.indigo,
                                    child: const Text("اضافة"),
                                  ),
                                  /// TODO : StreamBuilder =>

                                ],
                              ),
                            ),
                            stringTitle: "اضافة هاتف جديد");
                      },
                      icon: const Icon(Icons.add)),
                  CustomTextField(
                    controller: phone,
                    labelText: "رقم الهاتف",
                    width: media.width * .6,
                    textInputType: TextInputType.number,
                  )
                ],
              ),
            ),
            Container(
              height: media.height * .06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextComponent(
                      text: "اضافة حساب بنكي",
                      fontSize: 18.0,
                      colorText: Colors.black87),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          needAdd = !needAdd;
                        });
                      },
                      icon: const Icon(Icons.add)),
                ],
              ),
            ),
            AnimatedCrossFade(
              firstChild: Container(),
              secondChild: Column(
                children: [
                  DropList(list: listOfBank, value: banKController),
                  SpaceComponent(),
                  DropList(list: listOfBranch, value: branchController),
                  SpaceComponent(),
                  CustomTextField(
                    controller: accountNumberController,
                    labelText: "رقم الحساب",
                  ),
                  SpaceComponent(),
                  DropList(
                    list: typeAccount,
                    value: typeAccountController,
                    onChange: (value) {
                      setState(() {
                        typeAccountController = value;
                      });
                      if (typeAccountController == "اخري") {
                        setState(() {
                          showTextFieldOfTypeAccount = true;
                        });
                      } else {
                        setState(() {
                          showTextFieldOfTypeAccount = false;
                        });
                      }
                    },
                  ),
                  SpaceComponent(),
                  AnimatedCrossFade(
                    firstChild: Container(),
                    secondChild: Padding(
                      padding: EdgeInsets.only(top: media.height * .01),
                      child: CustomTextField(
                        controller: TextEditingController(),
                        labelText: "نوع الحساب",
                      ),
                    ),
                    crossFadeState: showTextFieldOfTypeAccount == false
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 800),
                  ),
                  SpaceComponent(),
                  CustomTextField(
                    controller: ATMNumberController,

                    /// <= show this when he choose "اخري"
                    labelText: "رقم بطاقة الصرف",
                  ),
                  SpaceComponent(),
                  CustomTextField(
                    controller: confirmationATMNumberController,
                    labelText: "تأكيد رقم بطاقة الصراف",
                  ),
                  SpaceComponent(),
                  CustomTextField(
                    onTap : () => calendarDate(),
                    controller: expireDataController,
                    labelText: "تاريخ الصلاحيه البطاقة شهر / سنة",
                    textInputType: TextInputType.number,
                  ),
                ],
              ),
              crossFadeState: needAdd == false
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 800),
            ),
            GeneralButton(
              width: media.width * 2,
              onPressed: () {},
              color: Colors.indigo,
              child: const Text("حفظ"),
            ),
          ],
        ),
      ),
    );
  }
}
