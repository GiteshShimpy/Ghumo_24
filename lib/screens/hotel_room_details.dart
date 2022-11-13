import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/apply_button.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/drop_down.dart';
import 'package:ghumo_24/components/drop_down2.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/hotel_amenities.dart';
import 'package:ghumo_24/screens/hotel_detail_done.dart';
import 'package:ghumo_24/screens/hotel_details.dart';

class HotelRoomDetails extends StatefulWidget {
  const HotelRoomDetails({Key? key}) : super(key: key);

  @override
  State<HotelRoomDetails> createState() => _HotelRoomDetailsState();
}

class _HotelRoomDetailsState extends State<HotelRoomDetails> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    bool open = false;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                        0.0,0.0,  0.0,0.0,
                        Color.fromARGB(255, 70, 66, 66),
                        Color.fromARGB(255, 56, 53, 53),
                        Color.fromARGB(255, 255, 255, 255))),
                Positioned(
                    top: h * 0.11,
                    left: w * 0.05,
                    child: Image.asset(
                      "images/aboutproperty.png",
                      width: w * 0.9,
                      height: h * 0.09,
                    )),
                Positioned(
                    top: h * 0.2,
                    child: MyCart(
                        0.8,
                        1.0,50.0,50.0,
                       0.0,0.0,
                        Color.fromARGB(255, 178, 225, 243),
                        Color.fromARGB(255, 235, 206, 222),
                        Color.fromARGB(255, 255, 255, 255))),
                Positioned(
                    top: h * 0.22,
                    left: w * 0.35,
                    child: Image.asset(
                      "images/policies.png",
                      width: w * 0.3,
                      height: h * 0.05,
                    )),
                Positioned(
                    top: h * 0.3, left: w * 0.02, child: DropDownList2()),
                Positioned(
                    top: h * 0.85,
                    left: w * 0.56,
                    child: ApplyButton(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HotelDoneScreen()));
                      },
                    )),
                Positioned(
                    top: h * 0.86,
                    left: w * 0.4,
                    child: MyButton(
                      onpress: () {
                        Navigator.pop(context);
                      },
                      btnname: Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      width: 0.16,
                      height: 0.07,
                      btncolor: Color.fromARGB(255, 255, 255, 255),
                    )),
              ],
            )),
      ),
    ));
  }
}
