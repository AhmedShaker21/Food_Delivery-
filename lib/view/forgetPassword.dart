import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
import 'package:untitled11/view/resetPassword.dart';

import '../model/component/constants.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
                            child:
                            InkWell(

                                onTap: () {
                                  Navigator.pop(
                                    context,
                                  );
                                },
                                child: const Icon(Icons.arrow_back_ios_new, color: IconOrange)),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height*0.03,),
                        const Text(
                          "Select which contact details should we \nuse to reset your password",
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
                size.height * 0.01),
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
            height: size.height*0.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 6),
              child: Row(
                children: [
                  Icon(Icons.sms,color: iconColor,size: 35,),
                SizedBox(width: size.width*0.035,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Via sms:",style: timeFont),
                      Row(
                        children: [
                          Text("... ... " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
            Text("4235" , style: TextStyle(fontSize: 16),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.003,
          ),
          Container(

            margin: EdgeInsets.all(
                size.height * 0.01),
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
            height: size.height*0.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 6),
              child: Row(
                children: [
                  Icon(Icons.email,color: iconColor,size: 35,),
                  SizedBox(width: size.width*0.035,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Via email:",style: timeFont),
                      Row(
                        children: [
                          Text(".... " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                          Text("@gmail.com" , style: TextStyle(fontSize: 16),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.3,
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
    const ResetPass()),
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
