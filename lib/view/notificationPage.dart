import 'package:flutter/material.dart';
import '../model/component/constants.dart';
class notificationWidget extends StatelessWidget {
  const notificationWidget({Key? key}) : super(key: key);
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
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
                        "Notification",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: size.height * 0.11,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset("assets/truePhoto.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Your order has been taken by \nthe driver",
                        style: textLargeFont),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                    const Text("Recently", style: timeFont),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: size.height * 0.11,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset("assets/BetCoin.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Topup for \$100 was \nsuccessful",
                        style: textLargeFont),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                    const Text("10.00 Am", style: timeFont),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: size.height * 0.11,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset("assets/falsePhoto.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Your order has been canceled",
                        style: textLargeFont),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                    const Text("22 Juny 2021", style: timeFont),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
