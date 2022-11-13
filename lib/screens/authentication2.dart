import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/otp.dart';
import 'package:get/get.dart';
import 'package:ghumo_24/screens/otp2.dart';

class AuthenticationScreen2 extends StatefulWidget {
  const AuthenticationScreen2({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen2> createState() => _AuthenticationScreen2State();
}

class _AuthenticationScreen2State extends State<AuthenticationScreen2> {
  TextEditingController m2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
          width: w * 1.0,
          height: h * 1.0,
          child: Stack(
            children: [
              Positioned(
                top: h * 0.0,
                left: w * 0.0,
                child: Container(
                  width: w * 1.0,
                  height: h * 0.5,
                  child: Image.asset(
                    "images/upshlash2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: h * 0.01,
                left: w * 0.25,
                child: Image.asset("images/ghumologo.png",
                    width: w * 0.5, height: h * 0.1),
              ),
              Positioned(
                  top: h * 0.48,
                  left: w * 0.0,
                  child: MyCart(
                      0.52,
                      1.0,
                      20.0,
                      20.0,
                      0.0,
                      0.0,
                      Color.fromARGB(255, 86, 218, 228),
                      Color.fromARGB(255, 238, 188, 216),
                      Color.fromARGB(0, 255, 255, 255))),
              Positioned(
                  top: h * 0.51,
                  left: w * 0.36,
                  child: Text(
                    "HELLO!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: h * 0.035,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: h * 0.58,
                  left: w * 0.1,
                  child: Text(
                    "verify your number to unlock more features in",
                    style: TextStyle(color: Colors.white, fontSize: h * 0.018),
                  )),
              Positioned(
                  top: h * 0.61,
                  left: w * 0.42,
                  child: Text(
                    "the app.",
                    style: TextStyle(color: Colors.white, fontSize: h * 0.018),
                  )),
              Positioned(
                  top: h * 0.7,
                  left: w * 0.05,
                  child: MyTextFormField(
                    width: 0.9,
                    height: 0.055,textcolor: Color.fromARGB(255, 255, 255, 255),
                    contentpadding: 45.0,
                    radius: 25.0,
                    bordercolor: Colors.white,
                    borderwidth: 1.0,
                    hinttxt: "Enter Phone Number",
                    prefixicon: Icons.phone,
                    color: Color.fromARGB(0, 255, 255, 255),
                    inptype: TextInputType.number,
                    length: 10,
                    hintcolor: Colors.white,
                    hts: 15.0,
                    mycontroller: m2,
                  )),
              Positioned(
                  top: h * 0.7,
                  left: w * 0.1,
                  child: Image.asset(
                    "images/phone.png",
                    width: w * 0.055,
                    height: h * 0.055,
                  )),
              Positioned(
                  top: h * 0.8,
                  left: w * 0.2,
                  child: MyButton(
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen2()),
                      );
                    },
                    btnname: Text(
                      "Send OTP",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    height: 0.05,
                    width: 0.6,
                    btncolor: Color.fromARGB(255, 1, 140, 209),
                  ))
            ],
          )),
    )));
  }
}
