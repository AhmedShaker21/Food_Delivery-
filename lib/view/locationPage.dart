import 'package:flutter/material.dart';

import '../model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Center(
                    child: Column(children: [
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
                padding: EdgeInsets.only(top: 50, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                          color: searchColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.arrow_back_ios_new, color: IconOrange),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      "Set Your Location ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                        "This data will be displayed in your account \nprofile for security",
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
                      Container(
                        height: size.height*0.2,
                        width: size.width*0.8,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                     child: Padding(
                       padding: const EdgeInsets.all(15),
                       child: Column(
                         children: [
                           Row(
                             children: [

                  Image.asset("assets/locationIcon.png",),
                               SizedBox(width: size.width*0.03,),
                               Text("Your Location" , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20),
                             child: Container(
                               width: size.width*0.9,
                               height: size.height*0.07,
                               decoration: BoxDecoration(
                                 color: Color(0xF565252),
                                 borderRadius: BorderRadius.circular(15)

                               ),
                               child: TextButton(
                                 onPressed: (){},
                                 child: Center(child: Text("Set Location",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                 
                               ),
                             ),
                           )
                         ],
                       ),
                     ),

                      ),
                      SizedBox(
                        height: size.height * 0.35,
                      ),
                      SizedBox(
                        width: 157,
                        height: 57,
                        child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.Congrates, (route) => false),

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
    ])))));
  }
}
