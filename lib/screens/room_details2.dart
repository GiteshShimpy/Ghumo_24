import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/check_button.dart';
import 'package:ghumo_24/components/countert_button.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/facility_cart.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/select_drop_down.dart';
import 'package:ghumo_24/components/select_drop_down2.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/gst.dart';
import 'package:ghumo_24/screens/hotel_amenities.dart';
import 'package:ghumo_24/screens/hotel_details.dart';
import 'package:ghumo_24/screens/room_details3.dart';

class RoomDetails2 extends StatefulWidget {
  const RoomDetails2({Key? key}) : super(key: key);

  @override
  State<RoomDetails2> createState() => _RoomDetails2State();
}

class _RoomDetails2State extends State<RoomDetails2> {
  TextEditingController m40 = new TextEditingController();
  TextEditingController m41 = new TextEditingController();
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
                  top: h * 0.25,
                  left: w * 0.07,
                  child: Text("Number of Extra adult allowed",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(
                    top: h * 0.26, left: w * 0.05, child: CounterButton()),
                Positioned(
                  top: h * 0.36,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m41,
                    textcolor: Colors.black,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.88,
                    height: 0.05,
                    hinttxt: "Enter Extra adult Price",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.number,
                    length: 10,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                    hts: 15.0,
                    contentpadding: 45.0,
                  ),
                ),
                Positioned(
                    top: h * 0.358,
                    left: w * 0.08,
                    child: Image.asset(
                      "images/r.png",
                      width: w * 0.055,
                      height: h * 0.055,
                    )),
                Positioned(
                  top: h * 0.43,
                  left: w * 0.07,
                  child: Text("Number of Extra Child allowed",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(
                    top: h * 0.44, left: w * 0.05, child: CounterButton()),
                Positioned(
                  top: h * 0.535,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m40,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.88,
                    height: 0.05,
                    textcolor: Colors.black,
                    hinttxt: "Enter Extra child Price",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.number,
                    length: 10,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                    hts: 15.0,
                    contentpadding: 45.0,
                  ),
                ),
                Positioned(
                    top: h * 0.533,
                    left: w * 0.08,
                    child: Image.asset(
                      "images/r.png",
                      width: w * 0.055,
                      height: h * 0.055,
                    )),
                Positioned(
                  top: h * 0.61,
                  left: w * 0.07,
                  child: Text("Additional bed for additional Person",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(top: h * 0.62, left: w * 0.05, child: CheckButton()),
                Positioned(
                  top: h * 0.71,
                  left: w * 0.07,
                  child: Container(
                    width: w * 0.6,
                    child: Text(
                        "Additional mattress provided for additional person",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500)),
                  ),
                ),
                Positioned(top: h * 0.74, left: w * 0.05, child: CheckButton()),
                Positioned(
                    top: h * 0.86,
                    left: w * 0.51,
                    child: MyButton(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RoomDetails3()));
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
