import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/img_2.png"),
             const Text(
               textAlign: TextAlign.center,
               "Find your Comfort\nFood here",
              style: TextStyle(
                  fontFamily: "BentonSans Bold",
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff09051C)),
            ),
            const Text(
              "Here You Can find a chef or dish for every \ntaste and color. Enjoy!",
              style: TextStyle(
                  fontFamily: "BentonSans Bold",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff000000)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: size.width*0.4,
              height: size.height*0.08,
              child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.splashScreen2, (route) => false),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff53E88B)),
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
