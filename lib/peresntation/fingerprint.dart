import 'package:flutter/material.dart';
class FingerprintAuthenticationScreen extends StatefulWidget {
  @override
  _FingerprintAuthenticationScreenState createState() =>
      _FingerprintAuthenticationScreenState();
}

class _FingerprintAuthenticationScreenState
    extends State<FingerprintAuthenticationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b3991),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const <Widget>[
            Icon(
              Icons.fingerprint,
              size: 80.0,
              color: Colors.pink,
            ),
            SizedBox(height: 150),
            Text(
              'Please place your fingerprint to verify',
              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
