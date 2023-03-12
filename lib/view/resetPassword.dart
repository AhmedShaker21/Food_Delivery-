import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
import 'package:untitled11/model/component/constants.dart';

import '../model/cores/dimensions.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  State<ResetPass> createState() => _ResetPassState();
}
String password = "";


class _ResetPassState extends State<ResetPass> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
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
                                const Icon(Icons.arrow_back_ios_new, color: IconOrange),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Reset your password \nhere",
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
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.length < 6) {
                      return "    Password must be at least 6 characters";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                  style: const TextStyle(
                      color: Colors.black87),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(top: 5  , left: 16),
   
                      hintText: 'New Password',
                      hintStyle: TextStyle(
                          color: Colors.black38)),
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
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  validator: (val) {
                    if (val!.length < 6) {
                      return "    Password must be at least 6 characters";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                  style: const TextStyle(
                      color: Colors.black87),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(top: 5  , left: 16),

                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.black38)),
                ),
              ),
              SizedBox(
                height: size.height * 0.29,
              ),
              SizedBox(
                width: 157,
                height: 57,
                child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.successNotif, (route) => false),

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
        ));  }
}
