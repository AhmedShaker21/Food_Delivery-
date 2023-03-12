import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled11/model/component/alreadyHaveAccount.dart';
import 'package:untitled11/model/component/constants.dart';

import '../controller/helper/helper_function.dart';
import '../controller/service/auth_service.dart';
import 'yourBio.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;
  bool isRememberMe = false;
  bool prising = false;
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: _isLoading
            ? const Center(child: CircularProgressIndicator(color: Colors.green))
            : SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle.light,
                  child: GestureDetector(
                    child: Stack(
                      children: <Widget>[
                        Image.asset("assets/fullPattern.png",
                            width: double.infinity),
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
                                  "Sign Up For Free",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: size.height * 0.050,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Form(
                                    key: formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
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
                                                    color: Colors.black26,
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
                                                    EdgeInsets.only(top: 14),
                                                prefixIcon: Image(
                                                    image: AssetImage(
                                                        "assets/Profile.png")),
                                                hintText: 'FullName',
                                                hintStyle: TextStyle(
                                                    color: Colors.black38)),
                                            onChanged: (val) {
                                              setState(() {
                                                fullName = val;
                                              });
                                            },
                                            validator: (val) {
                                              if (val!.isNotEmpty) {
                                                return null;
                                              } else {
                                                return '   Name cannot be empty';
                                              }
                                            },
                                          ),
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

                                            // check tha validation
                                            validator: (val) {
                                              return RegExp(
                                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                      .hasMatch(val!)
                                                  ? null
                                                  : "    Please enter a valid email";
                                            },
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            style: const TextStyle(
                                                color: Colors.black87),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.only(top: 14),
                                                prefixIcon: Image(
                                                    image: AssetImage(
                                                        "assets/Message.png")),
                                                hintText: 'Email',
                                                hintStyle: TextStyle(
                                                    color: Colors.black38)),
                                          ),
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
                                                    color: Colors.black26,
                                                    blurRadius: 6,
                                                    offset: Offset(0, 2))
                                              ]),
                                          height: 60,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.length < 6) {
                                                return "    Password must be at least 6 characters";
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
                                            style: const TextStyle(
                                                color: Colors.black87),
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.only(top: 14),
                                                prefixIcon: Image(
                                                    image: AssetImage(
                                                        "assets/Lock.png")),
                                                hintText: 'Password',
                                                hintStyle: TextStyle(
                                                    color: Colors.black38)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: Row(
                                            children: <Widget>[
                                              Theme(
                                                data: ThemeData(
                                                    unselectedWidgetColor:
                                                        Colors.black12),
                                                child: Checkbox(
                                                  value: isRememberMe,
                                                  checkColor: Colors.white,
                                                  activeColor: Colors.green,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isRememberMe =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                              ),
                                              const Text(
                                                "Keep Me Signed In",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: Row(
                                            children: <Widget>[
                                              Theme(
                                                data: ThemeData(
                                                    unselectedWidgetColor:
                                                        Colors.black12),
                                                child: Checkbox(
                                                  value: prising,
                                                  checkColor: Colors.white,
                                                  activeColor: Colors.green,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      prising = value ?? false;
                                                    });
                                                  },
                                                ),
                                              ),
                                              const Text(
                                                "Email Me About Pricing",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(
                                              size.height * 0.03),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.height * 0.13),
                                          height: size.height * 0.08,
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(iconColor),
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                )),
                                                elevation:
                                                    const MaterialStatePropertyAll(
                                                        5),
                                                padding:
                                                    const MaterialStatePropertyAll(
                                                        EdgeInsets.all(15))),
                                            onPressed: () => {
                                              register(),

                                            },
                                            child: const Text(
                                              "Create Account",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        //Password Input
                                        const HaveAccount(),
                                        const SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),
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
      ),
    );
  }

  void showSnackbar(context, color, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ));
  }

  void nextScreen(context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  void nextScreenReplace(context, page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  register() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .registerUserWithEmailandPassword(fullName, email, password)
          .then((value) async {
        if (value == true) {
          // saving the shared preference state
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(email);
          await HelperFunctions.saveUserNameSF(fullName);
          nextScreenReplace(context, YourBio());
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
