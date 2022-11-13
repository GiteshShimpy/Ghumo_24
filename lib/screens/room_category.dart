import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/room_selection.dart';

import '../components/dynamic_cart.dart';

class RoomCategory extends StatelessWidget {
  const RoomCategory({Key? key}) : super(key: key);

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
                  top: h * 0.02,
                  left: w * 0.05,
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Gitesh Shimpy",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              Positioned(
                top: h * 0.02,
                left: w * 0.46,
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
                    "images/src.png",
                    width: w * 0.9,
                    height: h * 0.1,
                  )),
              Positioned(top: h * 0.21, left: w * 0.02, child: RoomSelection())
            ],
          )),
    ));
  }
}
