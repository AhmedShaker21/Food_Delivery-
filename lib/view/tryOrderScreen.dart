import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

class TryOrder extends StatelessWidget {
  const TryOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/fullPattern.png", width: size.width),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  Center(child: Image.asset("assets/Success Illustration.png")),
                  const Text(
                    "Congrats!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: iconColor,
                        fontFamily: 'Viga'),
                  ),
                  const Text(
                    "Your Profile Is Ready To Use",
                    style: TextStyle(fontWeight: FontWeight.bold , fontFamily: "BentonSans Bold",fontSize: 20),
                  )
                ],
              ),
            ],

          ),
          SizedBox(
            height: size.height*0.25,
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
    );
  }
}
