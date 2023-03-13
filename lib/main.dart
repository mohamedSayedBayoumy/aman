import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'peresntation/intro.dart';

import 'peresntation/screens/transfer_screens/add_new_transfer_screen.dart';

 void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  primaryColor = Color(0xff2b3991),
        primaryColor: Colors.blue,
        // secondaryColor = Color(0xffffffff),
        primarySwatch: Colors.blue,
      ),
      home: AddNewTransferScreen(),
    );
  }
}
