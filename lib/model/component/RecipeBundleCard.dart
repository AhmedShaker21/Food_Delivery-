import 'package:flutter/material.dart';

class RecipeBundleCard extends StatelessWidget {
  const RecipeBundleCard({super.key});

  @override
  Widget build(BuildContext context) {
    // double? defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(children: <Widget>[
           Expanded(child: Container(child: Image.asset("assets/"
               "PromoAdvertising.png")))
        ]),
      ),
    );
  }
}
