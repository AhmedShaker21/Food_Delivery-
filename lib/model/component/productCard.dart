import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SizedBox(
                      width: size.width*0.42,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/Resturant_Image.png",height: size.height*0.095),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Vegan Resto",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "12 Min",
                                  style: TextStyle(color: Colors.blueGrey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width*0.42,
                      height: 160.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/Restaurant_Image4 (1).png" , height: size.height*0.095 ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Healthy Food",
                                  style:
                                      textLargeFont,
                                ),
                                 const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "8 Min",
                                  style: textSmallFont
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );

  }
}
