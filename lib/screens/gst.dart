import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/drop_down.dart';
import 'package:ghumo_24/components/drop_down2.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/hotel_amenities.dart';
import 'package:ghumo_24/screens/hotel_details.dart';
import 'package:ghumo_24/screens/hotel_room_details.dart';

class GstScreen extends StatefulWidget {
  const GstScreen({Key? key}) : super(key: key);

  @override
  State<GstScreen> createState() => _GstScreenState();
}

class _GstScreenState extends State<GstScreen> {
  TextEditingController m23 = TextEditingController();
  TextEditingController m50 = TextEditingController();
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
                      "images/aboutproperty.png",
                      width: w * 0.9,
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
                  top: h * 0.25,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m23,textcolor: Colors.black,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    height: 0.05,
                    hinttxt: "Enter your Hotel GST number",
                    prefixicon: Icons.house,
                    contentpadding: 45.0,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 40,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                    hts: 15.0,
                  ),
                ),
                Positioned(
                    top: h * 0.245,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/gsti.png",
                      width: w * 0.06,
                      height: h * 0.06,
                    )),
                Positioned(
                    top: h * 0.325, left: w * 0.02, child: DropDownList()),
                Positioned(
                    top: h * 0.86,
                    left: w * 0.51,
                    child: MyButton(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HotelRoomDetails()));
                      },
                      btnname: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      width: 0.16,
                      height: 0.07,
                      btncolor: Color.fromARGB(255, 255, 255, 255),
                    )),
                Positioned(
                    top: h * 0.86,
                    left: w * 0.31,
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
