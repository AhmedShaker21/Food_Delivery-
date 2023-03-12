import 'package:flutter/material.dart';

import 'package:untitled11/constants/screens.dart' as screens ;



class Splash_Screen2 extends StatefulWidget {
  const Splash_Screen2({Key? key}) : super(key: key);

  @override
  State<Splash_Screen2> createState() => _Splash_Screen2State();
}

class _Splash_Screen2State extends State<Splash_Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(children: [
              Image.asset("assets/img_3.png"),
            ]),
            const Text(
              "Food Ninja is Where Your \n Comfort Food Lives",
              style: TextStyle(
                  fontFamily: "Rye",
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff09051C)),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Enjoy a fast and smooth  food delivery at \n your doorstep",
              style: TextStyle(
                  fontFamily: "Rye",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff000000)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 157,
              height: 57,
              child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.signup, (route) => false),

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
    );
  }
}
