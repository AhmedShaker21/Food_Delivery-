
import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

class NearestRestaurant extends StatefulWidget {
  const NearestRestaurant({Key? key}) : super(key: key);

  @override
  State<NearestRestaurant> createState() => _NearestRestaurantState();
}

class _NearestRestaurantState extends State<NearestRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [

                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false);
                        },
                        child:  Icon(Icons.arrow_back,color: Colors.cyan,size: 30,))
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
