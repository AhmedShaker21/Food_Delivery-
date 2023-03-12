import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled11/model/component/buttom.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/model/component/forgetPassword.dart';
import 'package:untitled11/model/component/socialSignIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';

import '../model/component/widget/widgets.dart';
import '../controller/helper/helper_function.dart';
import '../controller/service/auth_service.dart';
import '../controller/service/databse_service.dart';



 class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();

  bool _isLoading = false;

  bool isRememberMe = false;

  bool prising = false;

  final formKey = GlobalKey<FormState>();

  String email = "";

  String password = "";

  String fullName = "";

  AuthService authService = AuthService();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: _isLoading
          ? Center(
          child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor))
          : SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Image.asset("assets/fullPattern.png", width: double.infinity),
                Column(children: [
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  Center(child: Image.asset("assets/Logo (1).png")),
                  const Text(
                    "FoodNinja",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: iconColor,
                        fontFamily: 'Viga'),
                  ),
                  const Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "BentonSans Bold"),
                  ),
                  SizedBox(
                    height: size.height * 0.095,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login To Your Account",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * 0.050,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                          Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(size.height * 0.02),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6,
                                          offset: Offset(0, 2))
                                    ]),
                                height: 60,
                                child: TextFormField(
                                  onChanged: (val) {
                                    setState(() {
                                      email = val;
                                    });
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black87),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 14),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: iconColor,
                                      ),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.black38)),
                                  validator: (val) {
                                    return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!)
                                        ? null
                                        : "Please enter a valid email";
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: size.height * 0.02),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6,
                                          offset: Offset(0, 2))
                                    ]),
                                height: 60,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.length < 6) {
                                      return "Password must be at least 6 characters";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      password = val;
                                    });
                                  },
                                  obscureText: true,
                                  style: TextStyle(color: Colors.black87),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 14),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: iconColor,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.black38)),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              //Password Input
                              Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(12),
                                    child: Text("Or Continue With",
                                        style: textLargeFont),
                                  )),
                              SocialSignIn(),
                              BuildForgetPassword(),
                              Container(
                                margin: EdgeInsets.all(size.height * 0.02),
                                padding: EdgeInsets.symmetric(horizontal: size.height * 0.17),
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(iconColor),
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                      elevation: const MaterialStatePropertyAll(5),
                                      padding: const MaterialStatePropertyAll(EdgeInsets.all(15))),
                                  onPressed: () => {
                                    login(),
                                    // Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false),
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Center(
                                child: GestureDetector(
                                    onTap: () => {
                                      Navigator.of(context).pushNamedAndRemoveUntil(screens.signup, (route) => false),
                                    },

                                    child: const Text(
                                      "Don`t have account?",
                                      style: TextStyle(
                                          color: iconColor,
                                          fontSize: 15

                                      ),
                                    )
                                ),
                              ),
                               SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),




                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }


  login() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .loginWithUserNameandPassword(email, password)
          .then((value) async {
        if (value == true) {
          QuerySnapshot snapshot =
          await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
              .gettingUserData(email);
          // saving the values to our shared preferences
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(email);
          await HelperFunctions.saveUserNameSF(snapshot.docs[0]['fullName']);
          nextScreenReplace(context,  HomePage());
        } else {
          showSnackbar(context, Colors.red, value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}

