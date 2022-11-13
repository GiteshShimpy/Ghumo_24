import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/components/button.dart';
import 'package:ghumo_24/components/dynamic_cart.dart';
import 'package:ghumo_24/components/text_field_cart.dart';
import 'package:ghumo_24/screens/hotel_amenities.dart';
import 'package:ghumo_24/screens/hotel_details.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController m3 = new TextEditingController();
  TextEditingController m4 = new TextEditingController();
  TextEditingController m5 = new TextEditingController();
  TextEditingController m6 = new TextEditingController();
  TextEditingController m7 = new TextEditingController();
  TextEditingController m8 = new TextEditingController();
  TextEditingController m9 = new TextEditingController();
  TextEditingController m10 = new TextEditingController();
  TextEditingController m11 = new TextEditingController();

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
                        Color.fromARGB(0, 255, 255, 255))),
                Positioned(
                  top: h * 0.25,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m3,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    height: 0.055,
                    contentpadding: 45.0,
                    hinttxt: "Enter your property Name",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 40,
                    hts: 15.0,
                    hintcolor: Color.fromARGB(255, 126, 122, 122), textcolor: Colors.black,
                  ),
                ),
                Positioned(
                    top: h * 0.25,
                    left: w * 0.075,
                    child: Image.asset(
                      "images/property.png",
                      width: w * 0.06,
                      height: h * 0.055,
                    )),
                Positioned(
                    top: h * 0.34,
                    left: w * 0.05,
                    child: MyCart(
                        0.056,
                        0.44,
                        15.0,
                        15.0,
                        15.0,
                        15.0,
                        Color.fromARGB(255, 8, 142, 209),
                        Color.fromARGB(226, 155, 232, 255),
                        Color.fromARGB(0, 112, 111, 111))),
                Positioned(
                    top: h * 0.33,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/map.png",
                      width: w * 0.07,
                      height: h * 0.07,
                    )),
                Positioned(
                    top: h * 0.34,
                    left: w * 0.18,
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Google map",
                            style: TextStyle(
                                color: Color.fromARGB(255, 238, 234, 234))))),
                Positioned(
                    top: h * 0.34,
                    left: w * 0.51,
                    child: MyTextFormField(
                        mycontroller: m4,
                        radius: 15.0, textcolor: Colors.black,
                        color: Color.fromARGB(255, 255, 255, 255),
                        hintcolor: Color.fromARGB(255, 126, 122, 122),
                        bordercolor: Colors.white,
                        borderwidth: 0.0,
                        width: 0.44,
                        contentpadding: 45.0,
                        height: 0.055,
                        length: 6,
                        hts: 15.0,
                        inptype: TextInputType.number,
                        hinttxt: "Pin code",
                        prefixicon: Icons.location_on)),
                Positioned(
                    top: h * 0.34,
                    left: w * 0.53,
                    child: Image.asset(
                      "images/location.png",
                      width: w * 0.06,
                      height: h * 0.055,
                    )),
                Positioned(
                    top: h * 0.42,
                    left: w * 0.05,
                    child: MyTextFormField(
                        mycontroller: m5,
                        radius: 15.0, textcolor: Colors.black,
                        contentpadding: 45.0,
                        hts: 15.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        hintcolor: Color.fromARGB(255, 126, 122, 122),
                        bordercolor: Colors.white,
                        borderwidth: 0.0,
                        width: 0.44,
                        height: 0.055,
                        length: 20,
                        inptype: TextInputType.name,
                        hinttxt: "State",
                        prefixicon: Icons.location_on)),
                Positioned(
                    top: h * 0.42,
                    left: w * 0.075,
                    child: Image.asset(
                      "images/location.png",
                      width: w * 0.06,
                      height: h * 0.055,
                    )),
                Positioned(
                    top: h * 0.42,
                    left: w * 0.51,
                    child: MyTextFormField(
                        mycontroller: m6,
                        radius: 15.0,textcolor: Colors.black,
                        hts: 15.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        hintcolor: Color.fromARGB(255, 126, 122, 122),
                        bordercolor: Colors.white,
                        borderwidth: 0.0,
                        contentpadding: 45.0,
                        width: 0.44,
                        height: 0.055,
                        length: 20,
                        inptype: TextInputType.name,
                        hinttxt: "City",
                        prefixicon: Icons.location_on)),
                Positioned(
                    top: h * 0.42,
                    left: w * 0.54,
                    child: Image.asset(
                      "images/location.png",
                      width: w * 0.06,
                      height: h * 0.055,
                    )),
                Positioned(
                  top: h * 0.5,
                  left: w * 0.05,
                  child: MyTextFormField(
                    radius: 15.0,
                    mycontroller: m7,
                    contentpadding: 45.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),textcolor: Colors.black,
                    borderwidth: 0.0,
                    width: 0.9,
                    hts: 15.0,
                    height: 0.055,
                    hinttxt: "Enter hotel/property address",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 20,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                  top: h * 0.59,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m8,
                    radius: 15.0,
                    contentpadding: 45.0,textcolor: Colors.black,
                    hts: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    height: 0.055,
                    hinttxt: "Road name,Area,Colony",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 20,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                  top: h * 0.68,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m9,
                    radius: 15.0,textcolor: Colors.black,
                    hts: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    contentpadding: 45.0,
                    height: 0.055,
                    hinttxt: "Near by Femous Shop/Landmark",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 20,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                  top: h * 0.68,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m10,textcolor: Colors.black,
                    radius: 15.0,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    borderwidth: 0.0,
                    width: 0.9,
                    height: 0.055,
                    hinttxt: "Hotel Started Since",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    hts: 15.0,
                    inptype: TextInputType.name,
                    length: 20,
                    contentpadding: 45.0,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                    top: h * 0.676,
                    left: w * 0.069,
                    child: Image.asset(
                      "images/since.png",
                      width: w * 0.065,
                      height: h * 0.06,
                    )),
                Positioned(
                  top: h * 0.77,
                  left: w * 0.05,
                  child: MyTextFormField(
                    mycontroller: m11,
                    radius: 15.0,textcolor: Colors.black,
                    bordercolor: Color.fromARGB(255, 255, 255, 255),
                    hts: 15.0,
                    borderwidth: 0.0,
                    width: 0.9,
                    contentpadding: 45.0,
                    height: 0.055,
                    hinttxt: "Star Rating of the Property",
                    prefixicon: Icons.house,
                    color: Colors.white,
                    inptype: TextInputType.name,
                    length: 20,
                    hintcolor: Color.fromARGB(255, 126, 122, 122),
                  ),
                ),
                Positioned(
                    top: h * 0.766,
                    left: w * 0.07,
                    child: Image.asset(
                      "images/star.png",
                      width: w * 0.065,
                      height: h * 0.06,
                    )),
                Positioned(
                    top: h * 0.86,
                    left: w * 0.4,
                    child: MyButton(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HotelAmenities()));
                      },
                      btnname: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      width: 0.16,
                      height: 0.07,
                      btncolor: Color.fromARGB(255, 255, 255, 255),
                    ))
              ],
            )),
      ),
    ));
  }
}
