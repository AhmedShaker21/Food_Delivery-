import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens;
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/model/cores/dimensions.dart';

class CallPhone extends StatelessWidget {
  const CallPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
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
                    padding:  EdgeInsets.symmetric(
                        vertical: screenAwareSize(_width*0.12, context),
                        horizontal: screenAwareSize(_width*0.04, context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.16,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: screenAwareSize(_width*0.2, context)),
                          child: Column(
                            children: [
                              Image.asset("assets/ImageCall.png"),
                              SizedBox(
                                height: size.height * 0.08,
                              ),
                              Text(
                                "Courtney Henry",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              Text(
                                "Ringing...",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              SizedBox(
                                height: size.height * 0.14,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: size.height * 0.12,
                                    width: size.width * 0.21,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0xFFDCEEE5)),
                                    child: IconButton(
                                      icon:Icon(Icons.volume_up_rounded),
                                        color: iconColor, iconSize: 35, onPressed: () {

                                        Navigator.of(context).pushNamedAndRemoveUntil(
                                            screens.CallPhoneMute, (route) => false);
                                                                  }),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Container(
                                    height: size.height * 0.12,
                                    width: size.width * 0.21,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.red),
                                    child: Icon(Icons.close,
                                        color: Colors.white, size: 35),
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
    );
  }
}
