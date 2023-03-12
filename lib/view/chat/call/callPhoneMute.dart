import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/model/cores/dimensions.dart';
import 'package:untitled11/view/chat/call/cancelCall.dart';

class CallPhoneMute extends StatelessWidget {
  const CallPhoneMute({Key? key}) : super(key: key);

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
                                "15.23 Min",
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
                                    child: Icon(Icons.volume_off,
                                        color: iconColor, size: 35),
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
                                    child: IconButton(
                                        onPressed: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const CancelCall()),
                                          );
                                        },icon:Icon(Icons.close,
                                        color: Colors.white, size: 35)),
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
