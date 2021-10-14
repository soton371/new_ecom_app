import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_ecom_app/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3), ()=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(image: AssetImage('images/1602002383690.jpg')),
            Text('Cined',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.black
            ),
            ),
            Text('YOUR TRUSTED ELECTRONICS',
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 12,
              color: Colors.grey
            ),
            ),
            Text('STORE',
              style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 12,
                  color: Colors.grey
              ),
            ),
            Spacer(),
            Text('Version: 1.0.0'),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
