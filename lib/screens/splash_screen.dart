import 'dart:async';

import 'package:flutter/material.dart';
import 'package:target/screens/screen2.dart';
import 'package:target/screens/targetstart.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                TargetStart()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            image:DecorationImage(
                image: AssetImage("assets/images/pro.png",),

            )));
  }
}