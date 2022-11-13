import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/countert_button.dart';
import 'package:ghumo_24/components/discount_cart.dart';
import 'package:ghumo_24/components/room_selection.dart';
import 'package:ghumo_24/components/select_room_type.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/components/update_arrow_button.dart';
import 'package:ghumo_24/components/update_button.dart';
import 'package:ghumo_24/screens/room_details.dart';
import '../components/dynamic_cart.dart';

class UpdateRoomDetails extends StatefulWidget {
  const UpdateRoomDetails({Key? key}) : super(key: key);

  @override
  State<UpdateRoomDetails> createState() => _UpdateRoomDetailsState();
}

class _UpdateRoomDetailsState extends State<UpdateRoomDetails> {
  var isSwitched;
  bool discountoffer = false;
  TextEditingController m16 = new TextEditingController();
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
                      "images/urd.png",
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
                    top: h * 0.24, left: w * 0.05, child: SelectRoomType()),
                Positioned(
                  top: h * 0.32,
                  left: w * 0.06,
                  child: Text("Number of available Rooms",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                ),
                Positioned(
                    top: h * 0.327, left: w * 0.045, child: CounterButton()),
                Positioned(
                  top: h * 0.42,
                  left: w * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: w * 0.05),
                      Text(
                        "Sold Out:",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15.0),
                      ),
                      Switch(
                        value: isSwitched ?? false,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Color.fromARGB(255, 71, 194, 243),
                        activeColor: Color.fromARGB(255, 249, 255, 249),
                      ),
                      SizedBox(width: w * 0.05),
                    ],
                  ),
                ),
                Positioned(
                  top: h * 0.48,
                  left: w * 0.015,
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          value: discountoffer,
                          onChanged: (bool? value) {
                            setState(() {
                              discountoffer = value!;
                            });
                          }),
                      Text(
                        "Run a Discount Offers",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: h * 0.55, left: w * 0.05, child: DiscountCart()),
                Positioned(
                  top: h * 0.73,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m16,
                    contentpadding: 45.0,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    textcolor: Colors.black,
                    height: 0.1,
                    hts: 15.0,
                    hinttxt: "Enter your Hotel othere details",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 50,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                    top: h * 0.723,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/fp.png",
                      width: w * 0.07,
                      height: h * 0.07,
                    )),
                Positioned(
                    top: h * 0.85,
                    left: w * 0.25,
                    child: UpdateButton(onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RoomDetails()));
                    })),
              ],
            )),
      ),
    ));
  }
}
