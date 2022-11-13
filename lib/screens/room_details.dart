import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
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
import 'package:ghumo_24/screens/room_details2.dart';
import 'package:ghumo_24/components/time_picker.dart';

class RoomDetails extends StatefulWidget {
  const RoomDetails({Key? key}) : super(key: key);

  @override
  State<RoomDetails> createState() => _RoomDetailsState();
}

class _RoomDetailsState extends State<RoomDetails> {
  TextEditingController m17 = new TextEditingController();
  TextEditingController m18 = new TextEditingController();
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
                  top: h * 0.245,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m17,
                    radius: 15.0,
                    hts: 15.0,textcolor: Colors.black,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.88,
                    height: 0.05,
                    hinttxt: "Enter Room Name",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 40,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                    contentpadding: 45.0,
                  ),
                ),
                Positioned(
                    top: h * 0.243,
                    left: w * 0.08,
                    child: Image.asset(
                      "images/rn.png",
                      width: w * 0.05,
                      height: h * 0.05,
                    )),
                Positioned(
                  top: h * 0.32,
                  left: w * 0.07,
                  child: Text("Number of available Rooms",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(
                    top: h * 0.327, left: w * 0.05, child: CounterButton()),
                Positioned(
                    top: h * 0.43, left: w * 0.05, child: SelectDropDown()),
                Positioned(
                  top: h * 0.515,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m18,
                    contentpadding: 45.0,
                    radius: 15.0,textcolor: Colors.black,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.88,
                    height: 0.05,
                    hinttxt: "Enter Room tariff",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.number,
                    length: 10,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                    hts: 15.0,
                  ),
                ),
                Positioned(
                    top: h * 0.513,
                    left: w * 0.08,
                    child: Image.asset(
                      "images/r.png",
                      width: w * 0.05,
                      height: h * 0.05,
                    )),
                Positioned(
                  top: h * 0.59,
                  left: w * 0.07,
                  child: Text("Maximum guest allowed in this room",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(
                    top: h * 0.6, left: w * 0.05, child: CounterButton()),
                Positioned(
                    top: h * 0.695, left: w * 0.05, child: SelectDropDown2()),
                Positioned(
                  top: h * 0.765,
                  left: w * 0.055,
                  child: Text("Check in & Check out time",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(
                    top: h * 0.8,
                    left: w * 0.056,
                    child: Text("Checkin Time",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500))),
                Positioned(
                    top: h * 0.8,
                    left: w * 0.56,
                    child: Text("Checkout Time",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500))),
                Positioned(top: h * 0.825, left: w * 0.05, child: TimePicker()),
                Positioned(top: h * 0.825, left: w * 0.55, child: TimePicker()),
                Positioned(
                    top: h * 0.89,
                    left: w * 0.415,
                    child: MyButton(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RoomDetails2()));
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
              ],
            )),
      ),
    ));
  }
}
