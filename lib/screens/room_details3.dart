import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/check_button.dart';
import 'package:ghumo_24/components/countert_button.dart';
import 'package:ghumo_24/components/drop_down3.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/facility_cart.dart';
import 'package:ghumo_24/components/update_arrow_button.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/select_drop_down.dart';
import 'package:ghumo_24/components/select_drop_down2.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/gst.dart';
import 'package:ghumo_24/screens/hotel_amenities.dart';
import 'package:ghumo_24/screens/hotel_detail_done.dart';
import 'package:ghumo_24/screens/hotel_details.dart';

class RoomDetails3 extends StatefulWidget {
  const RoomDetails3({Key? key}) : super(key: key);

  @override
  State<RoomDetails3> createState() => _RoomDetails3State();
}

class _RoomDetails3State extends State<RoomDetails3> {
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
                    left: w * 0.15,
                    child: Image.asset(
                      "images/rd.png",
                      width: w * 0.7,
                      height: h * 0.09,
                    )),
                Positioned(
                    top: h * 0.2,
                    child: MyCart(
                        0.8,
                        1.0,
                        50.0,
                        50.0,
                        0.0,
                        0.0,
                        Color.fromARGB(255, 178, 225, 243),
                        Color.fromARGB(255, 235, 206, 222),
                        Color.fromARGB(255, 255, 255, 255))),
                Positioned(
                    top: h * 0.232,
                    left: w * 0.07,
                    child: Text("Special in this room",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500))),
                Positioned(
                    top: h * 0.26, left: w * 0.04, child: Facilitycart()),
                Positioned(
                    top: h * 0.54,
                    left: w * 0.07,
                    child: Text("Tap to image to uplode Room photos",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500))),
                Positioned(
                    top: h * 0.59,
                    left: w * 0.07,
                    child: Row(
                      children: [
                        ImagePickerDemo(),
                        SizedBox(
                          width: w * 0.1,
                        ),
                        ImagePickerDemo(),
                        SizedBox(
                          width: w * 0.1,
                        ),
                        ImagePickerDemo()
                      ],
                    )),
                Positioned(
                    top: h * 0.72,
                    left: w * 0.07,
                    child: Row(
                      children: [
                        ImagePickerDemo(),
                        SizedBox(
                          width: w * 0.1,
                        ),
                        ImagePickerDemo(),
                        SizedBox(
                          width: w * 0.1,
                        ),
                        ImagePickerDemo()
                      ],
                    )),
                Positioned(
                    top: h * 0.88,
                    left: w * 0.375,
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
                Positioned(
                    top: h * 0.87,
                    left: w * 0.54,
                    child: UpdateArrowButton(onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HotelDoneScreen()));
                    })),
                Positioned(
                    top: h * 0.44, left: w * 0.05, child: DropDownList3()),
              ],
            )),
      ),
    ));
  }
}
