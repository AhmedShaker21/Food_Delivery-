import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens;
import 'package:untitled11/view/chat/chatScrean.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                          color: searchColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:
                            Icon(Icons.arrow_back_ios_new, color: IconOrange),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Chat",
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset("assets/Photo Profile (4).png"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Anamwp", style: textLargeFont),
                          SizedBox(
                            width: size.width * 0.3,
                          ),
                          const Text("20.00", style: timeFont),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.009,
                      ),
                      const Text("Your Order Just Arrived!", style: timeFont),
                      SizedBox(
                        height: size.height * 0.009,
                      ),
                    ],
                  ),
                ],
              ),
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
                  child: Image.asset("assets/Photo Profile (5).png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Anamwp", style: textLargeFont),
                        SizedBox(
                          width: size.width * 0.3,
                        ),
                        const Text("20.00", style: timeFont),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                    const Text("Your Order Just Arrived!", style: timeFont),
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
                  child: Image.asset("assets/Photo Profile (6).png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Anamwp", style: textLargeFont),
                        SizedBox(
                          width: size.width * 0.3,
                        ),
                        const Text("20.00", style: timeFont),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.009,
                    ),
                    const Text("Your Order Just Arrived!", style: timeFont),
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
