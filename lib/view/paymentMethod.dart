import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
import 'package:untitled11/view/takeImage.dart';

import '../model/component/constants.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
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
                            width: size.width * 0.11,
                            decoration: BoxDecoration(
                              color: searchColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:
                            InkWell(

                                onTap: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      screens.signup, (route) => false);
                                },
                                child: const Icon(Icons.arrow_back_ios_new, color: IconOrange)),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          "Payment Method",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height*0.03,),
                        const Text(
                          "This data will be displayed in your account \nprofile for security",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(

            margin: EdgeInsets.all(
                size.height * 0.015),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white10,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: size.height*0.12,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 6),

              child: Center(child: Image.asset("assets/paypal-2 (1) 1.png"))
            ),
          ),

          Container(

            margin: EdgeInsets.all(
                size.height * 0.015),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white10,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: size.height*0.12,
            child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 6),

                child: Center(child: Image.asset("assets/visa (1) 1.png"))
            ),
          ),

          Container(

            margin: EdgeInsets.all(
                size.height * 0.015),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white10,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: size.height*0.12,
            child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 6),

                child: Center(child: Image.asset("assets/Payoneer_logo 1.png"))
            ),
          ),
          SizedBox(
            height: size.height*0.10,
          ),
          SizedBox(
            width: 157,
            height: 57,
            child: ElevatedButton(
                onPressed: () =>      Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>
    const TakeImage()),
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
    );
  }
}
