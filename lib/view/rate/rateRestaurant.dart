import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/model/cores/dimensions.dart';
import 'package:untitled11/view/vouncherPromo.dart';

import '../chat/call/callPhoneMute.dart';


class RateRestaurant extends StatelessWidget {
  const RateRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/fullPattern.png",
                      width: size.width * 0.9,
                    )),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenAwareSize(_width * 0.12, context),
                          horizontal: screenAwareSize(_width * 0.02, context)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenAwareSize(_width * 0.11, context)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/RateRestaurant.png"),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  "Thank You!",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Enjoy Your Meal",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: size.height * 0.015,
                                ),
                                Text(
                                  "Please rate your Restaurant",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.orange, size: 38),
                                    SizedBox(
                                      width: size.width * 0.06,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.orange, size: 38),
                                    SizedBox(
                                      width: size.width * 0.06,
                                    ),
                                    Icon(Icons.star,
                                        color: Colors.orange, size: 38),
                                    SizedBox(
                                      width: size.width * 0.06,
                                    ),
                                    Icon(Icons.star,
                                        color: Color(0xFFFFF2E0), size: 38),
                                    SizedBox(
                                      width: size.width * 0.06,
                                    ),
                                    Icon(Icons.star,
                                        color: Color(0xFFFFF2E0), size: 38),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Container(
                                  width: size.width * 0.75,
                                  height: size.height * 0.08,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(width: 0.2),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.white10,
                                            blurRadius: 6,
                                            offset: Offset(0, 2))
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      style: const TextStyle(
                                          color: Colors.black87),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding:
                                          EdgeInsets.only(top: 14),
                                          prefixIcon: Icon(
                                              Icons.edit_note_sharp,
                                              size: 35,
                                              color: iconColor),
                                          hintText: 'Leave feedback',
                                          hintStyle:
                                          TextStyle(color: Colors.black38)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: size.width * 0.5,
                                      height: size.height * 0.08,
                                      decoration: BoxDecoration(
                                          color: iconColor,
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.white10,
                                                blurRadius: 6,
                                                offset: Offset(0, 2))
                                          ]),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const VouncherPromo()),
                                            );
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                iconColor),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      15)),
                                            ),
                                          ),
                                          child: Text("Submit",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight:
                                                  FontWeight.bold))),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.03,
                                    ),
                                    Container(
                                      width: size.width * 0.2,
                                      height: size.height * 0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.white10,
                                                blurRadius: 6,
                                                offset: Offset(0, 2))
                                          ]),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const VouncherPromo()),
                                            );
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      15)),
                                            ),
                                          ),
                                          child: const Text(
                                            'Skip',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: iconColor),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
