import 'package:flutter/material.dart';
import 'package:untitled11/view/orderDetails.dart';

import '../model/component/constants.dart';
import 'package:untitled11/model/cores/dimensions.dart';

import 'chat/call/callPhoneMute.dart';

class VouncherPromo extends StatelessWidget {
  const VouncherPromo({Key? key}) : super(key: key);

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
                  child: Image.asset(
                    "assets/Pattern.png",
                    width: size.width * 0.9,
                  )),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(
                        vertical: screenAwareSize(_width*0.12, context),
                        horizontal: screenAwareSize(_width*0.1, context) ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.11,
                            decoration: BoxDecoration(
                              color: searchColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(Icons.arrow_back_ios_new,
                                color: IconOrange),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          "Voucher Promo",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Image.asset("assets/Voucher 1.png"),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Image.asset("assets/Voucher 2.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: size.height*0.21,),
          Container(
            width: size.width * 0.8,
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
                        const OrderDettails()),
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
                child: Text("Check out",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight:
                        FontWeight.bold))),
          ),        ],
      ),
    );
  }
}
