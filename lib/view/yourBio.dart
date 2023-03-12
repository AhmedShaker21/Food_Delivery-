import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
import 'package:untitled11/view/paymentMethod.dart';

class YourBio extends StatefulWidget {
  const YourBio({Key? key}) : super(key: key);

  @override
  State<YourBio> createState() => _YourBioState();
}

class _YourBioState extends State<YourBio> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    screens.home, (route) => false);
                              },
                              child: Container(
                                height: size.height * 0.06,
                                width: size.width * 0.11,
                                decoration: BoxDecoration(
                                  color: searchColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child:
                                InkWell(

                                    onTap: () {
                                      Navigator.of(context).pushNamedAndRemoveUntil(
                                          screens.signup, (route) => false);
                                    },
                                    child: const Icon(Icons.arrow_back_ios_new, color: IconOrange)),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              "Fill in your bio to get \nstarted",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: size.height*0.03,),
                            const Text(
                              "This data will be displayed in your account \nprofile for security",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(
                    size.height * 0.01),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white10,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  keyboardType:
                  TextInputType.emailAddress,
                  style: const TextStyle(
                      color: Colors.black87),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                      EdgeInsets.all(15),
                     
                      hintText: 'First Name',
                      hintStyle: TextStyle(
                          color: Colors.black38)),

                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return '   Name cannot be empty';
                    }
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              Container(
                margin: EdgeInsets.all(
                    size.height * 0.01),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white10,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  keyboardType:
                  TextInputType.emailAddress,
                  style: const TextStyle(
                      color: Colors.black87),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                      EdgeInsets.all(15),

                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                          color: Colors.black38)),

                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return '   Name cannot be empty';
                    }
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              Container(
                margin: EdgeInsets.all(
                    size.height * 0.01),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white10,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextFormField(
                  keyboardType:
                  TextInputType.number,
                  style: const TextStyle(
                      color: Colors.black87),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                      EdgeInsets.all(15),

                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                          color: Colors.black38)),

                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return '   Name cannot be empty';
                    }
                  },
                ),
              ),
              SizedBox(
                height: size.height*0.15,
              ),
              SizedBox(
                width: 157,
                height: 57,
                child: ElevatedButton(
                    onPressed: () =>Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const PaymentMethod()),
                    ),

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
            ],
          ),
        ));
  }
}
