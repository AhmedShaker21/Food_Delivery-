import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens;
import '../../model/component/constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

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
                  left: 0,
                  child: Image.asset(
                    "assets/fullPattern.png",
                    width: size.width * 0.9,
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                screens.home, (route) => false);
                          },
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.11,
                            decoration: BoxDecoration(
                              color: searchColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back_ios_new,
                                    color: IconOrange)),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          "Chat",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          width: size.width * 0.85,
                          height: size.height * 0.14,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white10,
                                    blurRadius: 6,
                                    offset: Offset(0, 2))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("assets/Photo Profile (4).png"),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dianne Russell",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.circle_rounded,
                                              color: iconColor, size: 11),
                                          SizedBox(width: size.width*0.02,),
                                          Text("Online", style: textSmallFont),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: size.width*0.15,),
                                Container(
                                  child: IconButton(
                                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.callPhone, (route) => false),


                                     icon: Icon(Icons.phone),color: iconColor),
                                    decoration: BoxDecoration(color: Color(
                                        0xFFD0EFDF),borderRadius: BorderRadius.circular(50)),
                                    width: size.width*0.09,height: size.height*0.05

                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: size.height*0.05),
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                              color: massege,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white10,
                                    blurRadius: 6,
                                    offset: Offset(0, 2))
                              ]),
                          child: Center(child: Text("Just to order")),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(width: size.width*0.27,),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                  color: iconColor,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.white10,
                                        blurRadius: 6,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Center(child: Text("Okay, for what level of spiciness?",style: TextStyle(color: Colors.white),)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                              color: massege,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white10,
                                    blurRadius: 6,
                                    offset: Offset(0, 2))
                              ]),
                          child: Center(child: Text("Okay, wait a minute 👍")),
                        ),
                        Row(
                          children: [
                            SizedBox(width: size.width*0.42,),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: iconColor,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.white10,
                                        blurRadius: 6,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Center(child: Text("Okay I'm waiting  👍",style: TextStyle(color: Colors.white),)),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: size.height*0.14),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.09,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white10,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Okay I'm waiting  👍"),
                  Icon(Icons.send,color: iconColor,)
                ],
              ),
            )
          ),

        ],
      ),
    );
  }
}
