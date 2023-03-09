
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/account_screen.dart';
import 'package:test2/peresntation/screens/login&register_screens/login_screen.dart';
import 'package:test2/peresntation/screens/my_card_screen/my_card_screen.dart';
import 'package:test2/peresntation/settings.dart';

import 'faq.dart';
import 'home.dart';
import 'nearBranch.dart';

class MainDrawer extends StatefulWidget {
  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
/*
  initState() {
    NGEvent.onProfileUpdated(() {
      if (!mounted) return;
      setState(() {});
    });

    NGEvent.on('member_update', (p0, p1) => setState(() {}));

    super.initState();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff273071),
        ),
        child: ListView(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: Column(children: [
                  GestureDetector(
                    onTap: () => {}, // NGUI.push(NGProfileScreen()),
                    child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: //NGSession.getUser()?.image == null
                            const Icon(Icons.person_pin,
                                size: 100, color: Colors.white)
                        /*
                          : CachedNetworkImage(
                              width: 100,
                              height: 100,
                              imageUrl: NGSession.getUser()?.image ?? '',
                              placeholder: (context, url) => const Icon(
                                  Icons.person_pin,
                                  size: 100,
                                  color: Colors.white),
                            ),
                            */
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        true
                            ? IconButton(
                                onPressed: () {
                                  /*
                                  NGUI.showAlertYesNo(
                                      text: t(
                                          "You are required to complete some information and attach your ID for your account to be authenticated, authenticate now?"),
                                      onYes: () {
                                        NGUI.push(NGProfileScreen());
                                      });
                                */
                                },
                                icon: const Icon(
                                  Icons.no_accounts,
                                  color: Colors.redAccent,
                                ),
                                color: Colors.white)
                            : Icon(
                                Icons.verified,
                                color: Colors.redAccent,
                              ),
                        const Padding(
                          padding:   EdgeInsets.all(5.0),
                          child: Text(''
                              /*
                              t('Hello,') +
                                      ' ' +
                                      NGSession.getUser()?.fullname ??
                                  t('Hello, our dear guest'),
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)
                                  */
                              ),
                        )
                      ],
                    ),
                  ),
                ])),
            ListTile(
                leading:
                    const Icon(Icons.home_outlined, color: Color(0xffffffff)),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
                leading:
                    const Icon(Icons.card_membership, color: Color(0xffffffff)),
                title:  const Text(
                  'My Cards',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCard()));
                }),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
                leading: const Icon(Icons.attach_money_outlined,
                    color: Color(0xfffffffff)),
                title: const Text(
                  'Nearest branch (Receive Cash)',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NearBranchScreen()));
                }),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
                leading: const Icon(Icons.person_outline_outlined,
                    color: Color(0xffffffff)),
                title: const Text(
                  'My Profile',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountScreen(
                                isVerification: false,
                              )));
                }),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
                leading: const Icon(Icons.contact_page_outlined,
                    color: Color(0xffffffff)),
                title: const Text(
                  'About Us',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
                onTap: () {

                }),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
                leading: const Icon(Icons.help_center_outlined,
                    color: Color(0xffffffff)),
                title: const  Text(
                  'FAQ',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),

                onTap: () {
  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FAQScreen()));
                }),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
                leading: const Icon(Icons.settings, color: Color(0xffffffff)),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsScreen()));
                }),
            const  Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.power_settings_new_outlined,
                  color: Colors.red),
              title: const Text(
                'Login',
             //   NGSession.isGuest() ? t('SYS_LOGIN') : t('SYS_LOGOUT'),
                style: TextStyle(color: Color(0xffffffff)),
              ),
              onTap: () {
              /*
                if (!NGSession.isGuest()) {
                  NGSession.logout();
                }
                NGUI.setRoot(NGLoginScreen());
              */
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
