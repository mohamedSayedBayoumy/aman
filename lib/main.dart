import 'package:flutter/material.dart';
import 'package:test2/peresntation/intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  primaryColor = Color(0xff2b3991),
        primaryColor: Colors.blue,
        // secondaryColor = Color(0xffffffff),
        primarySwatch: Colors.blue,
      ),
      home: Intro(),
    );
  }
}
