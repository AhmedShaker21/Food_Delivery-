import 'package:flutter/cupertino.dart';
import 'package:untitled11/screens/body.dart';

class category extends StatelessWidget {
  const category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(

            width: double.infinity,
            height: 150,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/PromoAdvertising.png")

              ),
            ),

          ),
        ),
        ItemCard(),

      ],
    );
  }
}
