import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/screens/authetication.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AuthenticationScreen())));
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: w,
                height: h,
                child: Stack(
                  children: [
                    Container(
                      width: w * 1.0,
                      height: h * 1.0,
                      child: Image.asset(
                        "images/splashscreen.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: h * 0.45,
                        left: w * 0.2,
                        child: Image.asset("images/ghumologo.png",
                            width: w * 0.6, height: h * 0.15)),
                    Positioned(
                      top: h * 0.08,
                      left: w * 0.04,
                      child: Image.asset("images/lyp.png",
                          width: w * 0.95, height: h * 0.16),
                    ),
                    Positioned(
                        top: h * 0.25,
                        left: w * 0.04,
                        child: Image.asset(
                          "images/pl.png",
                          width: w * 0.95,
                          height: h * 0.16,
                        )),
                  ],
                ))));
  }
}
