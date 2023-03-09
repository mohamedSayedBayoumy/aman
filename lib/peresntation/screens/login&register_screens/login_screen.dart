
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/login&register_screens/register_screen.dart';


import '../../components/app_bar/custom_app_bar.dart';
import '../../components/general_button_component.dart';
import '../../components/genral_padding.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../components/textfiled_component.dart';
import '../../fingerprint.dart';
import '../../home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static bool selectChoiceCountries = false;

  static List<String> countries = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          customSize: media.height * .12,
          needIconBell: false,
          title: 'تسجيل الدخول',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      body: GeneralPadding(
        child: ListView(
          children: [
            SpaceComponent(
              height: media.height * .08,
            ),
            CustomTextField(
              prefixIcon: Icons.email_outlined,
              controller: TextEditingController(),
              labelText: "البريد الالكتروني",
              curveBorder: 6.0,
              fill: true,
              fillColor: Colors.grey.shade300,
              borderColor: Colors.grey.shade200,

            ),
            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              prefixIcon: Icons.lock_outline_rounded,
              suffixIcon: Icons.visibility_outlined,
              onPressedSuffixIcon: () {
                /// TODO : show Password
              },
              controller: TextEditingController(),
              labelText: "كلمة المرور",
              curveBorder: 6.0,
              fill: true,
              fillColor: Colors.grey.shade300,
              borderColor: Colors.grey.shade200,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: TextComponent(
                      text: "نسيت كلمة المرور ؟ ",
                      fontSize: 12.0,
                      colorText: Colors.black54,
                    )),
                const Spacer(),
                TextComponent(
                  text: "تذكرني",
                  fontSize: 12.0,
                  colorText: Colors.black54,
                ),
                Checkbox(
                  fillColor: MaterialStateProperty.all(Colors.pinkAccent),
                  shape: const CircleBorder(),
                  value: selectChoiceCountries,
                  onChanged: (value) {
                    /// TODO : S
                  },
                ),
                SpaceComponent(
                  width: media.width * .02,
                ),
              ],
            ),
            GeneralButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              color: Colors.pinkAccent.shade200,
              height: media.height * .06,
              child: TextComponent(
                text: "الدخول",
                fontSize: 18.0,
                colorText: Colors.white,
                isBold: true,
              ),
            ),
            SpaceComponent(),
            GeneralButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FingerprintAuthenticationScreen(),
                    ));
              },
              color: Colors.indigo,
              height: media.height * .06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SpaceComponent(
                    width: media.width * .03,
                  ),
                  Image.asset("assets/fingerprint.png",
                      color: Colors.pinkAccent),
                  SpaceComponent(
                    width: media.width * .05,
                  ),
                  TextComponent(
                    text: " الدخول الأمن بالبصمة",
                    fontSize: 18.0,
                    colorText: Colors.white.withOpacity(.5),
                    isBold: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>   RegisterScreen(),)) ;
                    },
                    child:  TextComponent(
                      text : "اضغط هنا للستجيل",
                      colorText:  Colors.pinkAccent ,
                      isBold: true ,
                      fontSize: 13.0,
                    )),
                TextComponent(
                    text: "ليس لديك حساب بعد؟",
                    fontSize: 15.0,
                    colorText: Colors.black87),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
