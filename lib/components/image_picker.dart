import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  String image;
  double uiw = 0.22;
  double uih = 0.1;
  ImagePickerDemo({this.image = "images/ni.png"}) : super();

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Widget BottomSheet() {
    final h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border:
            (Border.all(width: 0.1, color: Color.fromARGB(255, 255, 255, 255))),
        borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
      ),
      height: h * 0.2,
      child: Column(children: [
        SizedBox(height: h * 0.01),
        Text(
          "Choose picture from",
          style: TextStyle(
              color: Color.fromARGB(255, 137, 201, 221),
              fontSize: 16.0,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 137, 201, 221))),
          onPressed: () {
            getimage(ImageSource.camera);
          },
          child: Row(
            children: [
              Icon(Icons.camera),
              SizedBox(width: 15.0),
              Text("Camera"),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 137, 201, 221))),
          onPressed: () {
            getimage(ImageSource.gallery);
          },
          child: Row(
            children: [
              Icon(Icons.photo),
              SizedBox(width: 15.0),
              Text("Gallary"),
            ],
          ),
        ),
      ]),
    );
  }

  Future getimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);

    if (image == null) return;

    final temporaryimage = File(image.path);

    setState(() {
      this._image = temporaryimage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          _image == null
              ? GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => BottomSheet()),
                    );
                  },
                  child: Container(
                    width: w * 0.22,
                    height: h * 0.1,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(0, 244, 67, 54), width: 0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage(widget.image),
                            fit: BoxFit.cover)),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => BottomSheet()),
                    );
                  },
                  child: Container(
                    width: w * 0.22,
                    height: h * 0.1,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(0, 244, 67, 54), width: 0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        image: DecorationImage(
                            image: FileImage(
                              File(_image!.path),
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
        ],
      ),
    );
  }
}
