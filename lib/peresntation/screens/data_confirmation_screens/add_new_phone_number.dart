// import 'package:aman/peresntation/components/general_button_component.dart';
// import 'package:aman/peresntation/components/textfiled_component.dart';
// import 'package:flutter/material.dart';
// import '../../../model.dart';
// import '../../components/text_component.dart';
//
// class AddNewPhone extends StatelessWidget {
//   AddNewPhone({Key? key}) : super(key: key);
//
//   List<DetailsDataModel> data = [
//     DetailsDataModel(address: "", data: "011114420"),
//     DetailsDataModel(address: "", data: "012555555"),
//     DetailsDataModel(address: "", data: "010225555"),
//     DetailsDataModel(address: "", data: "010225555"),
//     DetailsDataModel(address: "", data: "010225555"),
//     DetailsDataModel(address: "", data: "010225555"),
//     DetailsDataModel(address: "", data: "010225555"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size;
//     return Container(
//       height: media.height * .3,
//       width: media.width * .9,
//       child: ListView(
//         shrinkWrap: true,
//         children: [
//           CustomTextField(
//             controller: TextEditingController(),
//             labelText: "اضف هاتف جديد",
//             textInputType: TextInputType.number,
//           ),
//           GeneralButton(
//               onPressed: () {
//                 /// TODO : Save Action
//               },
//               child: const Text(
//                 "حفظ",
//                 style: TextStyle(
//                   fontSize: 10,
//                 ),
//               )),
//           Container(
//             height: media.height * .3,
//             width: media.width * .9,
//             child: ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 return Row(
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           /// TODO : Edit Action
//                         },
//                         child: const Text(
//                           "تعديل",
//                           style: TextStyle(fontSize: 15),
//                         )),
//                     TextButton(
//                         onPressed: () {
//                           /// TODO : Delete Action
//                         },
//                         child: Text(
//                           "حذف",
//                           style: TextStyle(
//                               fontSize: 15, color: Colors.red.shade900),
//                         )),
//                     const Spacer(),
//                     TextComponent(text: data[index].data),
//                   ],
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
