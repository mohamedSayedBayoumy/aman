import 'package:flutter/material.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard();

  @override
  _AddNewCardState createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  TextEditingController cardNoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController expireController = TextEditingController();

  final months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  final years = [
    DateTime.now().year,
    DateTime.now().year + 1,
    DateTime.now().year + 2,
    DateTime.now().year + 3,
    DateTime.now().year + 4,
    DateTime.now().year + 5,
  ];

  int selectedIndex1 = 0, selectedIndex2 = 0;

  TextStyle style = const TextStyle(
      color: Color(0xff327CA9), fontSize: 16, fontWeight: FontWeight.normal);

  DateTime expire = DateTime.now();

  double height = AppBar().preferredSize.height;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add New Card'),
          centerTitle: true,
          shadowColor: Colors.transparent,
        ),
        backgroundColor: const Color(0xffF3F5F9),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: buildRow(
                        title: 'Card Number',
                        controller: cardNoController,
                        textInputType: TextInputType.number),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: buildRow(
                        title: 'Name',
                        controller: nameController,
                        textInputType: TextInputType.text),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Text(
                            'Expire / ',
                            style: style,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Month',
                            style: style,
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 5,
                            color: Colors.white,
                            child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Year',
                            style: style,
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 5,
                            color: Colors.white,
                            child: const SizedBox()),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 150,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          //                         NGUI.push(HomePage());
                        },
                        style: ElevatedButton.styleFrom(
                            // backgroundColor: Theme.of(context).primaryColor ,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildRow(
      {required String title,
      required TextEditingController controller,
      required TextInputType textInputType}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: .3, color: Theme.of(context).primaryColor),
            ),
            labelText: title,
            hintText: title,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: .7, color: Theme.of(context).primaryColor),
            ),
            contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
          ),
        ),
      ],
    );
  }
}
