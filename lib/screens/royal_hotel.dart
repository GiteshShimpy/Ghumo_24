import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghumo_24/screens/authetication.dart';
import 'package:ghumo_24/screens/hotel_detail_done.dart';
import 'package:ghumo_24/screens/room_category.dart';
import 'package:ghumo_24/screens/room_details.dart';
import 'package:ghumo_24/screens/update_room_details.dart';

class RoyalHotelScreen extends StatefulWidget {
  RoyalHotelScreen({Key? key}) : super(key: key);
  @override
  State<RoyalHotelScreen> createState() => _RoyalHotelScreenState();
}

class _RoyalHotelScreenState extends State<RoyalHotelScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => RoomCategory())));
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: w * 1.0,
                height: h * 1.0,
                child: Stack(
                  children: [
                    Container(
                      width: w * 1.0,
                      height: h * 1.0,
                      child: Image.asset(
                        "images/rh.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: h * 0.27,
                      left: w * 0.21,
                      child: Image.asset(
                        "images/rhl.png",
                        width: w * 0.645,
                        height: h * 0.445,
                      ),
                    )
                  ],
                ))));
  }
}
