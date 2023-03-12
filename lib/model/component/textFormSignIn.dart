// import 'package:flutter/material.dart';
// import 'package:untitled11/component/buttom.dart';
// import 'package:untitled11/component/constants.dart';
// import 'package:untitled11/component/socialSignIn.dart';
// import 'package:untitled11/helper/helper_function.dart';
// import 'package:untitled11/service/auth_service.dart';
//
// import 'forgetPassword.dart';
//
// class TextFormSignIn extends StatefulWidget {
//   TextFormSignIn({Key? key}) : super(key: key);
//
//   @override
//   State<TextFormSignIn> createState() => _TextFormSignInState();
// }
//
// class _TextFormSignInState extends State<TextFormSignIn> {
//   bool _isLoading = false;
//   bool isRememberMe = false;
//   bool prising = false;
//   final formKey = GlobalKey<FormState>();
//   String email = "";
//   String password = "";
//   String fullName = "";
//   AuthService authService = AuthService();
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     return Form(
//       key: formKey,
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(size.height * 0.02),
//             alignment: Alignment.centerLeft,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: const [
//                   BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 6,
//                       offset: Offset(0, 2))
//                 ]),
//             height: 60,
//             child: TextFormField(
//               onChanged: (val) {
//                 setState(() {
//                   email = val;
//                 });
//               },
//               keyboardType: TextInputType.emailAddress,
//               style: TextStyle(color: Colors.black87),
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.only(top: 14),
//                   prefixIcon: Icon(
//                     Icons.email,
//                     color: iconColor,
//                   ),
//                   hintText: 'Email',
//                   hintStyle: TextStyle(color: Colors.black38)),
//               validator: (val) {
//                 return RegExp(
//                             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                         .hasMatch(val!)
//                     ? null
//                     : "Please enter a valid email";
//               },
//             ),
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: size.height * 0.02),
//             alignment: Alignment.centerLeft,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: const [
//                   BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 6,
//                       offset: Offset(0, 2))
//                 ]),
//             height: 60,
//             child: TextFormField(
//               validator: (val) {
//                 if (val!.length < 6) {
//                   return "Password must be at least 6 characters";
//                 } else {
//                   return null;
//                 }
//               },
//               onChanged: (val) {
//                 setState(() {
//                   password = val;
//                 });
//               },
//               obscureText: true,
//               style: TextStyle(color: Colors.black87),
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.only(top: 14),
//                   prefixIcon: Icon(
//                     Icons.lock,
//                     color: iconColor,
//                   ),
//                   hintText: 'Password',
//                   hintStyle: TextStyle(color: Colors.black38)),
//             ),
//           ),
//           SizedBox(
//             height: 6,
//           ),
//           //Password Input
//           Center(
//               child: Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Text("Or Continue With",
//                     style: textLargeFont),
//               )),
//           SocialSignIn(),
//           BuildForgetPassword(),
//           Container(
//             margin: EdgeInsets.all(size.height * 0.02),
//             padding: EdgeInsets.symmetric(horizontal: size.height * 0.17),
//             width: double.infinity,
//             child: ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all<Color>(iconColor),
//                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   )),
//                   elevation: const MaterialStatePropertyAll(5),
//                   padding: const MaterialStatePropertyAll(EdgeInsets.all(15))),
//               onPressed: () => {
//                 login(),
//                 // Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false),
//               },
//               child: const Text(
//                 "Login",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }void nextScreenReplace(context, view) {
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => view));
//   }
//
//   void nextScreen(context, view) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => view));
//   }
//   void showSnackbar(context , color , message){
//     ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(message , style: TextStyle(fontSize: 14,),),
//           backgroundColor: color,
//           duration: Duration(seconds: 2),
//           action: SnackBarAction(
//             label: "OK",
//             onPressed: () {
//
//             },
//             textColor: Colors.white,
//           ),
//         )
//
//     );
//   }
//
//   login() async {
//     if (formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//       await authService
//           .registerUserWithEmailandPassword(fullName, email, password)
//           .then((value) async {
//         if (value == true) {
//           // saving the shared preference state
//           await HelperFunctions.saveUserLoggedInStatus(true);
//           await HelperFunctions.saveUserEmailSF(email);
//           await HelperFunctions.saveUserNameSF(fullName);
//           nextScreenReplace(context,  HomePage());
//         } else {
//           showSnackbar(context, Colors.red, value);
//           setState(() {
//             _isLoading = false;
//           });
//         }
//       });
//     }  }
// }
