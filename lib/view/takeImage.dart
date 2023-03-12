import 'dart:io';
import 'dart:math';
import 'package:untitled11/constants/screens.dart' as screens ;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled11/view/locationPage.dart';

import '../model/component/constants.dart';

class TakeImage extends StatefulWidget {
  const TakeImage({Key? key}) : super(key: key);

  @override
  State<TakeImage> createState() => _TakeImageState();
}

class _TakeImageState extends State<TakeImage> {
  File? image;
  Future pickImage() async {

    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
        child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/Pattern.png",
                        width: size.width * 0.9,
                      )),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only( top : 50,left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(
                                  context
                                );
                              },
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.13,
                                decoration: BoxDecoration(
                                  color: searchColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: IconOrange),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              "Upload Your Photo \nProfile",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text(
                                "This data will be displayed in your account \nprofile for security",
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              MaterialButton(
                  child: Container(
                      width: size.width * 0.7,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      child: Image.asset("assets/Gallery Icon.png")),
                  onPressed: () {
                    pickImage();
                  }),
              SizedBox(
                height: size.height * 0.03,
              ),
              MaterialButton(
                  child: Container(
                      width: size.width * 0.7,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      child: Image.asset("assets/Camera Icon.png")),
                  onPressed: () {
                    pickImageC();
                  }),
              SizedBox(
                height: 20,
              ),
              image != null ? Container(
                  width: size.width*0.7,
                  height: size.height*0.4,
                  child: Image.file(image!)) : Text("No image selected"),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                width: 157,
                height: 57,
                child: ElevatedButton(
                    onPressed: () =>
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) =>
              const LocationPage()),
              ),


                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xff53E88B)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )),
              )
            ],
        ),
      ),
          )),
    );
  }
}
