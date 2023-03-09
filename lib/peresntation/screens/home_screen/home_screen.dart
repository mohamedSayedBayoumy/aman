import 'package:flutter/material.dart';
import 'package:test2/peresntation/drawer.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/general_button_component.dart';
import '../../components/home_screen_component/custom_widget.dart';
import '../../components/space_component.dart';
import '../../components/text_component.dart';
import '../../home.dart';
import '../login&register_screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(39, 48, 113, 1),
        appBar: CustomAppBar(
          elevation: 0.0,
          color: Colors.transparent,
          needIconBell: false,
          needBackButton: false,
          customSize: media.height * .12,
          title: '',
        ),
        drawer: MainDrawer(),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: media.width * .03),
            child: Center(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Image.asset("assets/full_logo.jpg",
                      height: media.height * .3),
                  SpaceComponent(
                    height: media.height * .04,
                  ),
                  GeneralButton(
                    width: media.width * .8,
                    height: media.height * .06,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    color: Colors.pink,
                    child: TextComponent(
                      isBold: true,
                      text: "تسجيل الدخول / التسجيل",
                      fontSize: 18.0,
                      colorText: Colors.white,
                    ),
                  ),
                  SpaceComponent(
                    height: media.height * .02,
                  ),
                  GeneralButton(
                      width: media.width * .8,
                      height: media.height * .06,
                      borderStyle: 30.0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      color: Colors.indigo.withOpacity(.5),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: media.width * .03),
                        child: Row(
                          children: [
                            SpaceComponent(
                              width: media.width * .25,
                            ),
                            TextComponent(
                              isBold: true,
                              text: "English",
                              fontSize: 18.0,
                              colorText: Colors.white,
                            ),
                            SpaceComponent(
                              width: media.width * .22,
                            ),
                            SpaceComponent(
                              width: media.width * .03,
                            ),
                            const Icon(Icons.language_sharp),
                          ],
                        ),
                      )),
                  SpaceComponent(
                    height: media.height * .03,
                  ),
                  const CustomNews(),
                ],
              ),
            )));
  }
}
