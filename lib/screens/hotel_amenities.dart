import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/drop_down.dart';
import 'package:ghumo_24/components/drop_down2.dart';
import 'package:ghumo_24/components/drop_down3.dart';
import 'package:ghumo_24/components/drop_down_list4.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/static_cart.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/category_room_floors2.dart';
import 'package:ghumo_24/screens/gst.dart';
import 'package:ghumo_24/screens/hotel_details.dart';

class HotelAmenities extends StatelessWidget {
  HotelAmenities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: h * 0.18),
              width: w,
              decoration: BoxDecoration(
                  border: (Border.all(
                      width: 1.0, color: Color.fromARGB(0, 0, 0, 0))),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 178, 225, 243),
                      Color.fromARGB(255, 235, 206, 222),
                    ],
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * 0.05,
                  ),
                  DropDownList4(),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  StaticCart(),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.05,
                      ),
                      ImagePickerDemo(),
                      SizedBox(
                        width: w * 0.119,
                      ),
                      ImagePickerDemo(),
                      SizedBox(
                        width: w * 0.119,
                      ),
                      ImagePickerDemo(),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.05,
                      ),
                      ImagePickerDemo(),
                      SizedBox(
                        width: w * 0.119,
                      ),
                      ImagePickerDemo(),
                      SizedBox(
                        width: w * 0.119,
                      ),
                      ImagePickerDemo(),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  ImagePickerDemo(),
                  SizedBox(
                    height: h * 0.07,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.315,
                      ),
                      MyButton(
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
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      MyButton(
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HotelDetails()));
                        },
                        btnname: Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 30.0,
                        ),
                        width: 0.16,
                        height: 0.07,
                        btncolor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.026,
                  ),
                ],
              ),
            ),
            Positioned(
              top: h * 0.01,
              left: w * 0.2,
              child: Image.asset(
                "images/ghumologo.png",
                width: w * 0.6,
                height: h * 0.07,
              ),
            ),
            Positioned(
                top: h * 0.08,
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
                top: h * 0.09,
                left: w * 0.05,
                child: Image.asset(
                  "images/aboutproperty.png",
                  width: w * 0.9,
                  height: h * 0.09,
                )),
          ],
        ),
      ),
    ));
  }
}
