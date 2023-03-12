import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

class Congrates extends StatelessWidget {
  const Congrates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/fullPattern.png", width: size.width),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.4,
                    ),
                    Image.asset("assets/Illustration.jpg"),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Congrats!",
                      style: TextStyle(
                          color: iconColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Your Profile is Ready To Use",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    SizedBox(
                      width: 157,
                      height: 57,
                      child: ElevatedButton(
                          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false),

                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Color(0xff53E88B)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          child: const Text(
                            'Try Order',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
