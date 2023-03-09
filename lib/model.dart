import 'dart:ui';

import 'package:test2/peresntation/controller/controllers.dart';


class DemoDataModel extends DemoData {
  const DemoDataModel(
      {required super.name,
      required super.status,
      required super.amount,
      required super.number,
      required super.date,
      required super.pdf,
      required super.details,
      required super.share,
      Color? color});

  factory DemoDataModel.fromJson(Map<String, dynamic> json) {
    return DemoDataModel(
        name: json["name"],
        date: json['date'],
        amount: json['amount'],
        details: json["details"],
        number: json["number"],
        pdf: json["pdf"],
        share: json["share"],
        status: json["status"],
        color: null);
  }
}

class DetailsData {
  final String address;

  final String data;

  DetailsData({required this.address, required this.data});
}

class AccountData {
  final dynamic nameEn;

  final dynamic nameAr;

  final dynamic number;

  final dynamic email;

  final dynamic address;

  final dynamic type;

  final dynamic date;
  final dynamic count;

  AccountData(
      {this.count,
       this.nameEn,
       this.nameAr,
       this.number,
       this.email,
       this.address,
       this.type,
       this.date});
}

class DetailsDataModel {
  final String address;

  final String data;

  DetailsDataModel({required this.address, required this.data});
}
