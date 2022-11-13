import 'package:flutter/material.dart';

class Facilitycart extends StatefulWidget {
  Facilitycart({
    Key? key,
  }) : super(key: key);

  @override
  State<Facilitycart> createState() => _FacilitycartState();
}

class _FacilitycartState extends State<Facilitycart> {
  bool ac = false;
  bool wifi = false;
  bool tv = false;
  bool telephone = false;
  bool iron = false;
  bool books = false;
  Color acfcolor = Colors.white;
  Color acscolor = Colors.white;
  Color wififcolor = Colors.white;
  Color wifiscolor = Colors.white;
  Color tvfcolor = Colors.white;
  Color tvscolor = Colors.white;
  Color telephonefcolor = Colors.white;
  Color telephonescolor = Colors.white;

  Color ironscolor = Colors.white;
  Color ironfcolor = Colors.white;
  Color booksfcolor = Colors.white;
  Color booksscolor = Colors.white;
  Color acbcolor = Color.fromARGB(255, 241, 239, 239);
  Color wifibcolor = Color.fromARGB(255, 241, 239, 239);
  Color tvbcolor = Color.fromARGB(255, 241, 239, 239);
  Color telephonebcolor = Color.fromARGB(255, 241, 239, 239);
  Color ironbcolor = Color.fromARGB(255, 241, 239, 239);
  Color booksbcolor = Color.fromARGB(255, 241, 239, 239);
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [
            Container(
              width: w * 0.203,
              height: h * 0.065,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 2.0, color: acbcolor)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      acfcolor,
                      acscolor,
                    ],
                  )),
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("images/ac.png",
                        width: w * 0.1, height: h * 0.041),
                    onTap: () {
                      if (ac == true) {
                        setState(() {
                          ac = false;
                          acfcolor = Color.fromARGB(255, 255, 255, 255);
                          acscolor = Color.fromARGB(255, 255, 255, 255);
                          acbcolor = Color.fromARGB(255, 241, 239, 239);
                        });
                      } else {
                        setState(() {
                          ac = true;
                          acfcolor = Color.fromARGB(255, 92, 182, 255);
                          acscolor = Color.fromARGB(255, 186, 216, 255);
                          acbcolor = Color.fromARGB(255, 131, 199, 255);
                        });
                      }
                    },
                  ),
                  Text(
                    "A/C",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: w * 0.203,
              height: h * 0.065,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 2.0, color: wifibcolor)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      wififcolor,
                      wifiscolor,
                    ],
                  )),
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("images/wifi.png",
                        width: w * 0.11, height: h * 0.041),
                    onTap: () {
                      if (wifi == true) {
                        setState(() {
                          wifi = false;
                          wififcolor = Color.fromARGB(255, 255, 255, 255);
                          wifiscolor = Color.fromARGB(255, 255, 255, 255);
                          wifibcolor = Color.fromARGB(255, 241, 239, 239);
                        });
                      } else {
                        setState(() {
                          wifi = true;
                          wififcolor = Color.fromARGB(255, 92, 182, 255);
                          wifiscolor = Color.fromARGB(255, 186, 216, 255);
                          wifibcolor = Color.fromARGB(255, 131, 199, 255);
                        });
                      }
                    },
                  ),
                  Text(
                    "Wi-Fi",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: w * 0.203,
              height: h * 0.065,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 2.0, color: tvbcolor)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      tvfcolor,
                      tvscolor,
                    ],
                  )),
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("images/tv.png",
                        width: w * 0.11, height: h * 0.041),
                    onTap: () {
                      if (tv == true) {
                        setState(() {
                          tv = false;
                          tvfcolor = Color.fromARGB(255, 255, 255, 255);
                          tvscolor = Color.fromARGB(255, 255, 255, 255);
                          tvbcolor = Color.fromARGB(255, 241, 239, 239);
                        });
                      } else {
                        setState(() {
                          tv = true;
                          tvfcolor = Color.fromARGB(255, 92, 182, 255);
                          tvscolor = Color.fromARGB(255, 186, 216, 255);
                          tvbcolor = Color.fromARGB(255, 131, 199, 255);
                        });
                      }
                    },
                  ),
                  Text(
                    "TV",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: w * 0.203,
              height: h * 0.065,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 2.0, color: telephonebcolor)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      telephonefcolor,
                      telephonescolor,
                    ],
                  )),
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("images/telephone.png",
                        width: w * 0.11, height: h * 0.041),
                    onTap: () {
                      if (telephone == true) {
                        setState(() {
                          telephone = false;
                          telephonefcolor = Color.fromARGB(255, 255, 255, 255);
                          telephonescolor = Color.fromARGB(255, 255, 255, 255);
                          telephonebcolor = Color.fromARGB(255, 241, 239, 239);
                        });
                      } else {
                        setState(() {
                          telephone = true;
                          telephonefcolor = Color.fromARGB(255, 92, 182, 255);
                          telephonescolor = Color.fromARGB(255, 186, 216, 255);
                          telephonebcolor = Color.fromARGB(255, 131, 199, 255);
                        });
                      }
                    },
                  ),
                  Text(
                    "Tel.",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          children: [
            Container(
              width: w * 0.203,
              height: h * 0.065,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 2.0, color: ironbcolor)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ironfcolor,
                      ironscolor,
                    ],
                  )),
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("images/iron.png",
                        width: w * 0.11, height: h * 0.041),
                    onTap: () {
                      if (iron == true) {
                        setState(() {
                          iron = false;
                          ironfcolor = Color.fromARGB(255, 255, 255, 255);
                          ironscolor = Color.fromARGB(255, 255, 255, 255);
                          ironbcolor = Color.fromARGB(255, 241, 239, 239);
                        });
                      } else {
                        setState(() {
                          iron = true;
                          ironfcolor = Color.fromARGB(255, 92, 182, 255);
                          ironscolor = Color.fromARGB(255, 186, 216, 255);
                          ironbcolor = Color.fromARGB(255, 131, 199, 255);
                        });
                      }
                    },
                  ),
                  Text(
                    "Iron",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: w * 0.203,
              height: h * 0.065,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 2.0, color: booksbcolor)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      booksfcolor,
                      booksscolor,
                    ],
                  )),
              child: Column(
                children: [
                  GestureDetector(
                    child: Image.asset("images/book.png",
                        width: w * 0.11, height: h * 0.041),
                    onTap: () {
                      if (books == true) {
                        setState(() {
                          books = false;
                          booksfcolor = Color.fromARGB(255, 255, 255, 255);
                          booksscolor = Color.fromARGB(255, 255, 255, 255);
                          booksbcolor = Color.fromARGB(255, 241, 239, 239);
                        });
                      } else {
                        setState(() {
                          books = true;
                          booksfcolor = Color.fromARGB(255, 92, 182, 255);
                          booksscolor = Color.fromARGB(255, 186, 216, 255);
                          booksbcolor = Color.fromARGB(255, 131, 199, 255);
                        });
                      }
                    },
                  ),
                  Text(
                    "Books",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
