import 'package:flutter/material.dart';

class NearBranchScreen extends StatefulWidget {
  const NearBranchScreen({Key? key}) : super(key: key);

  @override
  _NearBranchScreenState createState() => _NearBranchScreenState();
}

class _NearBranchScreenState extends State<NearBranchScreen> {
  final dropdownState = GlobalKey<FormFieldState>();
  final dropdownCity = GlobalKey<FormFieldState>();
  final dropdownCountry = GlobalKey<FormFieldState>();

  late dynamic selectedCountry = "";
  late dynamic selectedCity = "";
  late dynamic selectedState = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receiving Addresses'),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffF3F5F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    key: dropdownCountry,
                    value: selectedCountry,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff4CACBC), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(),
                      // filled: true,
                      hintText: 'Country of receive',
                    ),
                    items: ['Sudan', 'Libya'].map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCountry = value ?? '';
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    key: dropdownState,
                    value: selectedState,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff4CACBC), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(),
                      // filled: true,
                      hintText: 'State of receive',
                    ),
                    items: ['Khartoum', 'Al Jazera'].map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedState = value ?? '';
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    key: dropdownCity,
                    value: selectedState,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff4CACBC), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(),
                      filled: true,
                      hintText: 'City',
                    ),
                    items: ['Khartoum North', 'Omdurman'].map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        // selectedState = value ?? '';
                        selectedState = value ;
                      });
                    },
                  ),
                  buildCard(
                      title: 'Address',
                      body:
                          'I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.',
                      ontap: () {}),
                  const SizedBox(
                    height: 5,
                  ),
                  buildCard(
                      title: 'Address',
                      body:
                          'I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.',
                      ontap: () {}),
                ]),
          ),
        ),
      ),
    );
  }

  Card buildCard(
      {required String title,
      required String body,
      required VoidCallback ontap}) {
    return Card(
      color: const Color(0xffC5E2F7),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(body),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Working Hours',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: ontap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.share),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
