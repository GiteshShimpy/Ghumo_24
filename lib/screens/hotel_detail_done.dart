import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/drop_down.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/gst.dart';
import 'package:ghumo_24/screens/hotel_details.dart';

class HotelDoneScreen extends StatelessWidget {
  HotelDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: w,
            height: h,
            child: Stack(
              children: [
                Positioned(
                  top: h * 0.265,
                  left: w * 0.08,
                  child: Image.asset(
                    "images/ghumologo.png",
                    width: w * 0.8,
                    height: h * 0.1,
                  ),
                ),
                Positioned(
                  top: h * 0.3,
                  left: w * 0.34,
                  child: Image.asset(
                    "images/greenu.png",
                    width: w * 0.34,
                    height: h * 0.34,
                  ),
                ),
                Positioned(
                  top: h * 0.345,
                  left: w * 0.385,
                  child: Image.asset(
                    "images/green.png",
                    width: w * 0.25,
                    height: h * 0.25,
                  ),
                ),
                Positioned(
                  top: h * 0.42,
                  left: w * 0.46,
                  child: Image.asset(
                    "images/tick.png",
                    width: w * 0.1,
                    height: h * 0.1,
                  ),
                ),
                Positioned(
                    top: h * 0.58,
                    left: w * 0.29,
                    child: Column(
                      children: [
                        Text(
                          "Awesome!!",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text("Your Applies has been",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 134, 128, 128))),
                        Text("completed and is being",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 134, 128, 128))),
                        Text("attended to",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 134, 128, 128))),
                      ],
                    ))
              ],
            )),
      ),
    ));
  }
}
