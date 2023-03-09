
import 'package:flutter/material.dart';


import '../../../core/function/Alert.dart';
import '../../components/app_bar/custom_app_bar.dart';
import '../../components/drop_list_component.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/get_image.dart';
import '../../components/id_image.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';
import '../../controller/controllers.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController birthdayController = TextEditingController();

  static dynamic selectChoiceType = type[1];

  static List<String> countries = [
    "الدولة",
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

  static List<String> type = [
    "الجنس",
    "ذكر",
    "أنثي",
  ];

  String? selectChoiceCountries;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.indigo.shade900;
    }
    return Colors.blue;
  }

  Future<void> calendarDate() async {
    DateTime? newDate = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(3000));
    if(newDate == null) return ;
    setState(() {
      var date = newDate
              .toString()
              .replaceAll("]", "")
              .replaceAll("[", "")
              .replaceAll("00:00:00.000", "");
      birthdayController.text = date.toString() ;
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery
        .of(context)
        .size;
    selectChoiceCountries = countries.first;
    selectChoiceType = type.first;
    return Scaffold(
      appBar: CustomAppBar(
          customSize: media.height * .12,
          needIconBell: false,
          title: ' مستخدم جديد',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          GeneralPadding(
              child: Column(children: [
                DropList(
                    list: countries,
                    value: selectChoiceCountries,
                    styleBorder: 15.0),
                SpaceComponent(),
                CustomTextField(
                    labelText: "الاسم باللغة الانجليزيه",
                    controller: Controller.nameEn),
                SpaceComponent(),
                CustomTextField(
                    labelText: "الاسم باللغة العربيه",
                    controller: Controller.nameEn),
                SpaceComponent(),
                CustomTextField(
                    labelText: "رقم الهاتف",
                    controller: TextEditingController()),
                SpaceComponent(),
                CustomTextField(
                    labelText: "البريد الالكتروني",
                    controller: TextEditingController()),
                SpaceComponent(),
                CustomTextField(
                    labelText: "كلمة المرور",
                    controller: TextEditingController()),
                SpaceComponent(),
                CustomTextField(
                    labelText: "تأكيد كلمة المرور",
                    controller: TextEditingController()),
                SpaceComponent(),
                CustomTextField(
                    labelText: "العنوان", controller: TextEditingController()),
                SpaceComponent(),
                DropList(
                    list: type, value: selectChoiceType, styleBorder: 15.0),
                SpaceComponent(),
                CustomTextField(
                    onTap : () => calendarDate(),
                    labelText: "تاريخ الميلاد",
                    controller: birthdayController),

                /// TODO :  Set Image ------------------------------
Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                                onPressed: () {
                                  alertDialog(context,
                                      child: ContentId(),
                                      stringTitle: "اختيار نوع الهوية");
                                },
                                child: const Text(
                                  "ارفاق",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 20,
                                  ),
                                )),
                            TextComponent(
                              text: "اثبات الهوية",
                              fontSize: 20.0,
                              isBold: true,
                            ),
                          ],
                        ),
                Row(
                  children: [
                    Expanded(
                        child: TextComponent(
                          text: Controller.warning1,
                          fontSize: 15.0,
                          colorText: Colors.black87,
                        )),
                    Checkbox(
                      shape: const CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value!;
                        });
                      },
                    ),
                  ],
                ),

                SpaceComponent(),
                Row(
                  children: [
                    Expanded(
                        child: TextComponent(
                          text: Controller.warning2,
                          fontSize: 15.0,
                          colorText: Colors.black87,
                        )),
                    Checkbox(
                      shape: const CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked2 = value!;
                        });
                      },
                    ),
                  ],
                ),
                SpaceComponent(),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          /// TODO : Navigator
                        },
                        child: TextComponent(
                          text: Controller.warning3,
                          fontSize: 15.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Checkbox(
                      shape: const CircleBorder(),
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked3 = value!;
                        });
                      },
                    ),
                  ],
                ),

                GeneralButton(
                    width: media.width,
                    onPressed: () {
                      /// TODO : Register
                    },
                    color: Colors.indigo,
                    child: TextComponent(
                      text: 'تسجيل',
                      colorText: Colors.white,
                      fontSize: 20.0,
                    )),
              ]))
        ],
      ),
    );
  }
}
