// import 'package:aman/peresntation/components/general_button_component.dart';
// import 'package:aman/peresntation/components/genral_padding.dart';
// import 'package:aman/peresntation/controller/controllers.dart';
// import 'package:flutter/material.dart';
//
// import '../../components/app_bar/appbar_component.dart';
//
// class DetailsData extends StatelessWidget {
//   const DetailsData({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: NaturalAppBar(title: "تفاصيل التحويل"),
//       body: GeneralPadding(
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const BouncingScrollPhysics(),
//               itemCount: 13,
//               itemBuilder: (context, index) {
//                 final detailsData = Controller.demoDetailsData[index];
//                 return Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           detailsData.data,
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 20),
//                         ),
//                         Text(
//                           detailsData.address,
//                           style: const TextStyle(fontSize: 20),
//                         ),
//                       ],
//                     ),
//                     const Divider(),
//                   ],
//                 );
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     width: 150.0,
//                     child: GeneralButton(
//                       onPressed: () {
//                         /// TODO : مشاركة
//                       },
//                       color: Colors.indigo,
//                       child: const Text(
//                         "مشاركة",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     )),
//                 Container(
//                   width: 150.0,
//                   child: GeneralButton(
//                     onPressed: () {
//                       /// TODO : PDF
//                     },
//                     color: Colors.indigo,
//                     child: const Text(
//                       "PDF",
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
