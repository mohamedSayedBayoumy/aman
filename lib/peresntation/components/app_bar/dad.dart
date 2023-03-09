// import 'dart:ui';
//
// import 'package:aman/peresntation/components/space_component.dart';
// import 'package:aman/peresntation/components/text_component.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class DrawerComponent extends StatelessWidget {
//   dynamic sizeSpace;
//
//   DrawerComponent({this.sizeSpace, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size;
//     return ListView(
//       children: [
//         SpaceComponent(height: media.height*.090,) ,
//         Container(
//           alignment: Alignment.bottomRight,
//           width: media.width * .05,
//           height: media.height*.03 ,
//           decoration: const BoxDecoration(
//             color: Colors.transparent,
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Image.asset('assets/triangular-arrow.png', color: Colors.indigo) ,
//               SpaceComponent(width: media.width*.04,),
//             ],
//           ),
//         ),
//         Container(
//           width: media.width * .8,
//           height: media.height,
//           margin: EdgeInsets.only(left: media.width*.3),
//           color: Colors.indigo.shade300.withOpacity(.4),
//           child: Stack(
//             children: [
//               Positioned.fill(
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
//                     child: const SizedBox(),
//                   )),
//               Positioned(
//                 top: media.height * .06,
//                 right: 0,
//                 child: Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         /// TODO : -----------------
//                       },
//                       child: Container(
//                         width: media.width,
//                         height: media.height * .05,
//                         margin: EdgeInsets.only(
//                             left: media.width * 1,
//                             bottom: media.height * .03),
//                         decoration: const BoxDecoration(
//                             border: Border(
//                                 bottom: BorderSide(color: Colors.white))),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             TextComponent(
//                                 text: "حوالة واردة",
//                                 fontSize: 18.0,
//                                 colorText: Colors.white,
//                                 isBold: true),
//                             Image.asset(
//                               "assets/black-circle.png",
//                               width: media.width * .2,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         /// TODO : -----------------
//                       },
//                       child: Container(
//                         width: media.width,
//                         height: media.height * .05,
//                         margin: EdgeInsets.only(
//                             left: media.width * 1,
//                             bottom: media.height * .03),
//                         decoration: const BoxDecoration(
//                             border: Border(
//                                 bottom: BorderSide(color: Colors.white))),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             TextComponent(
//                               isBold: true,
//                               text: "تأكيد البريد الالكتروني",
//                               fontSize: 18.0,
//                               colorText: Colors.white,
//                             ),
//                             Image.asset(
//                               "assets/black-circle.png",
//                               width: media.width * .2,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         /// TODO : -----------------
//                       },
//                       child: Container(
//                         width: media.width,
//                         height: media.height * .05,
//                         margin: EdgeInsets.only(
//                             left: media.width * 1,
//                             bottom: media.height * .03),
//                         decoration: const BoxDecoration(
//                             border: Border(
//                                 bottom: BorderSide(color: Colors.white))),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             TextComponent(
//                               isBold: true,
//                               text: "تم اضافة عملة الجنيه المصري",
//                               fontSize: 18.0,
//                               colorText: Colors.white,
//                             ),
//                             Image.asset(
//                               "assets/black-circle.png",
//                               width: media.width * .2,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
