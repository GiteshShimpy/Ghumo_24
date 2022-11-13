import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/select_drop_down2.dart';
import 'package:ghumo_24/screens/address.dart';
import 'package:ghumo_24/screens/authentication2.dart';
import 'package:ghumo_24/screens/authetication.dart';

class PropertyScreen extends StatelessWidget {
  const PropertyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: w,
          height: h,
          child: Stack(
            children: [
              Positioned(
                top: h * 0.03,
                left: w * 0.2,
                child: Image.asset(
                  "images/ghumologo.png",
                  width: w * 0.6,
                  height: h * 0.07,
                ),
              ),
              Positioned(
                  top: h * 0.1,
                  child: MyCart(
                      0.001,
                      1.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      Color.fromARGB(255, 70, 66, 66),
                      Color.fromARGB(255, 56, 53, 53),
                      Color.fromARGB(255, 255, 255, 255))),
              Positioned(
                  top: h * 0.11,
                  left: w * 0.05,
                  child: Image.asset(
                    "images/propertyimg.png",
                    width: w * 0.9,
                    height: h * 0.1,
                  )),
              Positioned(
                  top: h * 0.2,
                  child: MyCart(
                      0.8,
                      1.0,
                      50.0,
                      50.0,
                      15.0,
                      15.0,
                      Color.fromARGB(255, 178, 225, 243),
                      Color.fromARGB(255, 235, 206, 222),
                      Color.fromARGB(255, 255, 255, 255))),
              Positioned(
                  top: h * 0.23,
                  left: w * 0.225,
                  child: Text(
                    "Proceed By Selecting One Option,",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  )),
              Positioned(
                  top: h * 0.3,
                  left: w * 0.05,
                  child: MyCart(0.12, 0.9, 25.0, 25.0, 25.0, 25.0, Colors.white,
                      Colors.white, Color.fromARGB(255, 255, 255, 255))),
              Positioned(
                  top: h * 0.29,
                  left: w * 0.06,
                  child: Image.asset(
                    "images/hotelimg.png",
                    width: w * 0.25,
                    height: h * 0.14,
                  )),
              Positioned(
                  top: h * 0.31,
                  left: w * 0.35,
                  child: Text(
                    "Hotel",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  )),
              Positioned(
                top: h * 0.34,
                left: w * 0.35,
                child: SizedBox(
                  width: w * 0.4,
                  child: Text(
                    "Accommodations with facilities like dinig venues,meeting rooms & more.",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Color.fromARGB(255, 179, 175, 175)),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Positioned(
                  top: h * 0.33,
                  left: w * 0.8,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressScreen()));
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 28.0,
                      ))),
              Positioned(
                  top: h * 0.46,
                  left: w * 0.05,
                  child: MyCart(0.12, 0.9, 25.0, 25.0, 25.0, 25.0, Colors.white,
                      Colors.white, Color.fromARGB(255, 255, 255, 255))),
              Positioned(
                  top: h * 0.45,
                  left: w * 0.06,
                  child: Image.asset(
                    "images/homeimg.png",
                    width: w * 0.25,
                    height: h * 0.14,
                  )),
              Positioned(
                  top: h * 0.468,
                  left: w * 0.35,
                  child: Text(
                    "Homestay",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
                  )),
              Positioned(
                top: h * 0.498,
                left: w * 0.35,
                child: SizedBox(
                  width: w * 0.4,
                  child: Text(
                    "large independent homes/bungalows for guests that can be rented entriely or by room",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Color.fromARGB(255, 179, 175, 175)),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Positioned(
                  top: h * 0.49,
                  left: w * 0.8,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthenticationScreen2()));
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 28.0,
                      ))),
            ],
          )),
    ));
  }
}
