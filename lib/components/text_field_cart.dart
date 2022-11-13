import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatefulWidget {
  MyTextFormField(
      {Key? key,
      required this.radius,
      required this.mycontroller,
      required this.color,
      required this.textcolor,
      required this.hintcolor,
      required this.bordercolor,
      required this.borderwidth,
      required this.width,
      required this.height,
      required this.length,
      required this.contentpadding,
      required this.inptype,
      required this.hinttxt,
      required this.hts,
      required this.prefixicon})
      : super(key: key);
  final String hinttxt;
  final IconData prefixicon;
  Color textcolor;
  double radius;
  double hts;
  double borderwidth;
  double width;
  double height;
  double contentpadding;
  Color color;
  Color hintcolor;
  final TextEditingController mycontroller;
  int length;
  TextInputType inptype;
  Color bordercolor;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  TextEditingController myController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SizedBox(
      width: w * widget.width,
      height: h * widget.height,
      child: TextFormField(
        maxLength: widget.length,
        controller: widget.mycontroller,
        keyboardType: widget.inptype,
        minLines: 1,
        style: TextStyle(color: widget.textcolor),
        decoration: InputDecoration(
          counterText: "",
          contentPadding:
              EdgeInsets.only(left: widget.contentpadding, right: 10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
                width: widget.borderwidth),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          fillColor: widget.color,
          filled: true,
          border: InputBorder.none,
          hintText: widget.hinttxt,
          hintStyle: TextStyle(color: widget.hintcolor, fontSize: widget.hts),
        ),
      ),
    );
  }
}
