// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import '../../model.dart';


class Controller {

  static String warning1 =
      'ابقني علي اطلاع بالعروض و الخدمات الخاصة بأمان للصرافة , يمكن التواصل عبر البريد الالكتروني ( يمكن تغير ذلك في اي وقت من الضبط';

  static String warning2 =
      'ستكون اول من يري عروضنا الخاصة المثيرة (يمكن ايقاف ذلك في اي وقت من الضبط)';

  static String warning3 =
      'لقد قرأت و اوافق علي الشروط و الاحكام و سياسية الخصوصية';

  static List demoDetailsData = [
    DetailsData(address: "الرقم التسلسلي", data: "1234"),
    DetailsData(
        address: "تاريخ و وقت تنفيذ العمليه", data: "12:20 / 11-11-2023"),
    DetailsData(address: "اسم المستلم", data: "احمد علي"),
    DetailsData(address: "رقم الهاتف", data: "123456789"),
    DetailsData(address: "البلد و المدينه", data: "السودان - الخرطوم"),
    DetailsData(address: "اسم البنك", data: "بنك البركة"),
    DetailsData(address: "الفرع", data: "الرئيسة"),
    DetailsData(address: "رقم الحساب", data: "1234"),
    DetailsData(address: "المبلغ بعملة المرسل", data: "1000"),
    DetailsData(address: "المبلغ بالجنيه", data: "1500"),
    DetailsData(address: "سعر الصرف", data: "150"),
    DetailsData(address: "رسوم العمليه", data: "12"),
    DetailsData(address: "اجمالي المدفوع", data: "1234"),
  ];

  static TextEditingController nameEn = TextEditingController();
  static TextEditingController nameAr = TextEditingController();
  static TextEditingController number = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController passWord = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();
  static TextEditingController address = TextEditingController();
  static TextEditingController typ = TextEditingController();
  static TextEditingController date = TextEditingController();

  static void convert() {
    nameEn.text = "Mohamed Sayed Bayoumi";
    nameAr.text = "محمد سيد بيومي";
    number.text = "01114205280";
    email.text = "mohamedsayed12@gmail.com";
    address.text = "13 , شارع مدنيه نصر";
    typ.text = "ذكر";
    date.text = "11 - 5 -2023";
  }

  static List<DemoData> list = [];
}

class DemoData {
  final String name;

  final String status;

  final String amount;

  final String number;

  final String date;

  final String pdf;

  final String details;

  final String share;

  const DemoData(
      {required this.name,
      required this.status,
      required this.amount,
      required this.number,
      required this.date,
      required this.pdf,
      required this.details,
      required this.share});

  @override
  List<Object> get props => [
        name,
        status,
        amount,
        number,
        date,
        pdf,
        details,
        share,
      ];
}

