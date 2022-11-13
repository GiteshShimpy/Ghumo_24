import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/image_picker.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/gst.dart';
import 'package:ghumo_24/screens/hotel_amenities.dart';
import 'package:ghumo_24/screens/hotel_details.dart';

class CategoryRoomFloors extends StatelessWidget {
  const CategoryRoomFloors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController m17 = new TextEditingController();
    TextEditingController m18 = new TextEditingController();
    TextEditingController m19 = new TextEditingController();
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
                    mycontroller: m17,
                    radius: 15.0,textcolor: Colors.black,
                    hts: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    contentpadding: 45.0,
                    height: 0.05,
                    hinttxt: "Total number of rooms",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 40,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                    top: h * 0.245,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/room.png",
                      width: w * 0.06,
                      height: h * 0.06,
                    )),
                Positioned(
                  top: h * 0.34,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m18,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,textcolor: Colors.black,
                    width: 0.9,
                    contentpadding: 45.0,
                    height: 0.05,
                    hinttxt: "Total number of floors in hotel",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.number,
                    length: 10,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                    hts: 15.0,
                  ),
                ),
                Positioned(
                    top: h * 0.335,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/room.png",
                      width: w * 0.06,
                      height: h * 0.06,
                    )),
                Positioned(
                    top: h * 0.43,
                    left: w * 0.05,
                    child: MyCart(
                        0.1,
                        0.9,
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                        Colors.white,
                        Colors.white,
                        Color.fromARGB(255, 255, 255, 255))),
                Positioned(
                  top: h * 0.43,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m19,
                    radius: 15.0,textcolor: Colors.black,
                    contentpadding: 45.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    hts: 15.0,
                    width: 0.9,
                    height: 0.1,
                    hinttxt: "Femous places to explore near your property...",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 50,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                    top: h * 0.425,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/fp.png",
                      width: w * 0.07,
                      height: h * 0.07,
                    )),
                Positioned(
                    top: h * 0.86,
                    left: w * 0.51,
                    child: MyButton(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GstScreen()));
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
