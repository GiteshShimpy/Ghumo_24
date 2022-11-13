import 'package:flutter/material.dart';
import 'package:ghumo_24/screens/hotel_details.dart';
import 'package:ghumo_24/screens/room_details.dart';
import 'package:ghumo_24/screens/update_room_details.dart';

class RoomSelection extends StatelessWidget {
  RoomSelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
            child: Image.asset(
              "images/cr.png",
              width: w * 0.95,
              height: h * 0.1,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateRoomDetails()));
            }),
        GestureDetector(
            child: Image.asset(
              "images/dr.png",
              width: w * 0.95,
              height: h * 0.1,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateRoomDetails()));
            }),
        GestureDetector(
            child: Image.asset(
              "images/hvr.png",
              width: w * 0.95,
              height: h * 0.1,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateRoomDetails()));
            }),
        GestureDetector(
            child: Image.asset(
              "images/lvr.png",
              width: w * 0.95,
              height: h * 0.1,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateRoomDetails()));
            }),
        GestureDetector(
          child: Image.asset(
            "images/svr.png",
            width: w * 0.95,
            height: h * 0.1,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UpdateRoomDetails()));
          },
        ),
      ],
    );
  }
}
