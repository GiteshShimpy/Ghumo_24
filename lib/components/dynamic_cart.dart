import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  MyCart(
    @required this.height,
    @required this.width,
    @required this.tlr,
    @required this.trr,
    @required this.blr,
    @required this.brr,
    @required this.fcolor,
    @required this.scolor,
    @required this.bordercolor,
  ) : super();
  double height;
  double width;
  Color bordercolor;
  double tlr;
  double trr;
  double blr;
  double brr;
  Color fcolor;
  Color scolor;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h * height,
      width: w * width,
      decoration: BoxDecoration(
          border: (Border.all(width: 1.0, color: bordercolor)),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(tlr),
              topRight: Radius.circular(trr),
              bottomLeft: Radius.circular(blr),
              bottomRight: Radius.circular(brr)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              fcolor,
              scolor,
            ],
          )),
    );
  }
}
