import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens;

import '../controller/helper/helper_function.dart';
import '../controller/service/auth_service.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String userName = "";
  String email="";
  AuthService authService = AuthService();
  void initState(){
    super.initState();
    gettingUserData();
  }
  gettingUserData()async{
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val)  {
      setState((){
    userName = val!;
      });
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/Scrooll Tools.png"),
                )),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/photProfile (3).png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEFDC),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Member Gold",
                            style: TextStyle(color: Colors.amber, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        userName,
                        style: textLargeFont,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset("assets/editIcon.png"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children:  [
                      Text(
                        email,
                        style: textSmallFont,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2)),
                          ]),
                      child: Row(
                        children: [
                          Container(
                            height: size.height * 0.11,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset("assets/VoucherIcon.png"),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "You Have 3 Vouncher",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "BentonSans Bold"),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Text(
                      "Favorite",
                      style: TextStyle(
                          fontSize: 20, fontFamily: "BentonSans Bold"),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2))
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
                              child: Image.asset("assets/2.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children:  [
                                        const Text("Spacy fresh crab",
                                            style: textLargeFont),
                                        SizedBox(height: size.height*0.009,),
                                        const Text("Waroenk kita",
                                            style: TextStyle(color: Colors.grey)),
                                        SizedBox(height: size.height*0.009,),

                                        const Text("\$ 35" , style: TextStyle(
                                      fontSize: 25,
                                      color: iconColor ,
                                      fontWeight: FontWeight.bold
                                    ),)
                                      ],
                                    ),

                                    ElevatedButton(
                                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.signup, (route) => false),

                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(iconColor),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                        child: const Text(
                                          'Buy Again',
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                                        )),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2))
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
                              child: Image.asset("assets/1.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children:  [
                                        const Text("Spacy fresh crab",
                                            style: textLargeFont),
                                        SizedBox(height: size.height*0.009,),
                                        const Text("Waroenk kita",
                                            style: TextStyle(color: Colors.grey)),
                                        SizedBox(height: size.height*0.009,),

                                        const Text("\$ 35" , style: TextStyle(
                                      fontSize: 25,
                                      color: iconColor ,
                                      fontWeight: FontWeight.bold
                                    ),)
                                      ],
                                    ),

                                    ElevatedButton(
                                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.signup, (route) => false),

                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(iconColor),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                        child: const Text(
                                          'Buy Again',
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                                        )),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
 SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2))
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
                              child: Image.asset("assets/iceCream.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children:  [
                                        const Text("Spacy fresh crab",
                                            style: textLargeFont),
                                        SizedBox(height: size.height*0.009,),
                                        const Text("Waroenk kita",
                                            style: TextStyle(color: Colors.grey)),
                                        SizedBox(height: size.height*0.009,),

                                        const Text("\$ 35" , style: TextStyle(
                                      fontSize: 25,
                                      color: iconColor ,
                                      fontWeight: FontWeight.bold
                                    ),)
                                      ],
                                    ),

                                    ElevatedButton(
                                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(screens.signup, (route) => false),

                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(iconColor),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                        child: const Text(
                                          'Buy Again',
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                                        )),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                  ]),
            ),

          )
        ]),
    );
  }
}
