// import 'package:aman/peresntation/components/app_bar/appbar_component.dart';
// import 'package:aman/peresntation/components/general_button_component.dart';
// import 'package:aman/peresntation/components/genral_padding.dart';
// import 'package:aman/peresntation/components/space_component.dart';
// import 'package:flutter/material.dart';
//
//
// import '../../../model.dart';
// import '../../components/alert.dart';
// import '../../components/text_component.dart';
// import 'add_new_phone_number.dart';
//
// class DataConfirmation extends StatelessWidget {
//   DataConfirmation({Key? key}) : super(key: key);
//
//   List<DetailsDataModel> data1 = [
//     DetailsDataModel(address: "اسم المرسل", data: "XXXXXXXXXXX"),
//     DetailsDataModel(address: "البلد", data: "السودان"),
//     DetailsDataModel(address: "الولايه", data: "الخرطوم"),
//     DetailsDataModel(address: "المدينه", data: "الخرطوم"),
//
//
//   ];
//
//   List<DetailsDataModel> data2 = [
//     DetailsDataModel(address: "اسم البنك", data: " "),
//     DetailsDataModel(address: "الفرع", data: " "),
//     DetailsDataModel(address: "نوع الحساب", data: " "),
//     DetailsDataModel(address: "رقم الحساب", data: " "),
//     DetailsDataModel(address: "بطاقة الصراف الألي", data: ""),
//     DetailsDataModel(address: "تاريخ انتهاء البطاقة", data: ""),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size ;
//     return Scaffold(
//         backgroundColor: Colors.grey.shade200,
//         appBar: NaturalAppBar(title: "تأكيد بيانات التحويل"),
//         body: GeneralPadding(
//             child: ListView(
//               shrinkWrap: true,
//           children: [
//             ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 primary: true,
//                 shrinkWrap: true,
//                 itemCount: data1.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextComponent(
//                             text: data1[index].data,
//                           ),
//                           TextComponent(
//                             text: data1[index].address,
//                           ),
//                         ],
//                       ),
//                       SpaceComponent(height: media.height*.02,)
//                     ],
//                   );
//                 }),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextComponent(text: "015154512",) ,
//                 GeneralButton(
//                   onPressed: (){
//                   alertDialog(context, child: AddNewPhone() ,stringTitle: "قائمة الهواتف") ;
//                   /// TODO : Navigate to add New phone number
//                 }, color: Colors.indigo, child: const Text("قائمة الهواتف") ,) ,
//                 TextComponent(text: "رقم الهاتف", ) ,
//               ],
//             ) ,
//             const Divider(),
//             SpaceComponent(height: 3,) ,
//             ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 primary: true,
//                 shrinkWrap: true,
//
//                 itemCount: data2.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextComponent(
//                             text: data2[index].data,
//                           ),
//                           SpaceComponent(height: 3,) ,
//                           TextComponent(
//                             text: data2[index].address,
//                           ),
//                         ],
//                       ),
//                       SpaceComponent(height: media.height*.02,)
//                     ],
//                   );
//                 }),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GeneralButton(width: 150.0,onPressed: (){}, child: const Text("حذف") ,color: Colors.indigo) ,
//                 GeneralButton(width: 150.0,onPressed: (){}, child: const Text("تعديل"),color: Colors.indigo)
//               ],
//             )
//           ],
//         )));
//   }
// }
