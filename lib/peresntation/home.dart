
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test2/peresntation/screens/exchange_rate_screen/exchange_rate.dart';
import 'package:test2/peresntation/screens/transactions_screens/last_transactions.dart';
import 'package:test2/peresntation/screens/transfer_screens/add_new_transfer_screen.dart';
import 'package:test2/peresntation/screens/wallet/wallet_details.dart';

import 'components/app_bar/custom_app_bar.dart';
import 'components/app_bar/drawer_component.dart';
import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
        appBar: CustomAppBar(
            needIconBell: true,
            needBackButton: false,
            customSize: media.height * .12,
            title: "Aman Exchange",
            ),
        drawer: MainDrawer(),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer:    DrawerComponent(),
        backgroundColor: const Color(0xffF3F5F9),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imgs/backgroud.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  buildCard(
                      image: 'assets/imgs/transfer.png',
                      title: 'New Transfere',
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddNewTransferScreen()));
                      }),
                  buildCard(
                      image: 'assets/imgs/transaction-history.png',
                      title: 'Transactions History',
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LastTransaction()));
                      }),
                  buildCard(
                      image: 'assets/imgs/exchangerate.png',
                      title: 'Exchange Rate',
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ExchangeRateScreen()));
                      }),
                  buildCard(
                      image: 'assets/imgs/exchangerate.png',
                      title: 'My Wallet',
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWallet()));
                      }),
                ]),
          ),
        ));
  }

  buildCard(
      {required String image,
      required String title,
      required VoidCallback ontap}) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width - 50,
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          margin: const EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    image  ,
                    // image ?? '',
                    height: 70,
                    width: 70,
                    color: Theme.of(context).primaryColor,
                  )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  title ,
                  // title ?? "",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Color(0xff273071),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
