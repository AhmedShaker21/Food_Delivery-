import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: size.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black
                              .withOpacity(.1),
                          blurRadius: 10)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.facebook_rounded,
                        color: Colors.blue,
                        size: 45,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5),
                        child: Text(
                          "Facebook",
                          style: textLargeFont,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: size.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black
                              .withOpacity(.1),
                          blurRadius: 10)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.facebook_rounded,
                        color: Colors.blue,
                        size: 45,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5),
                        child: Text(
                          "Google",
                          style: textLargeFont,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
