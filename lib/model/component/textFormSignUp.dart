// import 'package:flutter/material.dart';
// import 'package:untitled11/service/auth_service.dart';
// class TextFormSignUp extends StatefulWidget {
//   const TextFormSignUp({Key? key}) : super(key: key);
//
//   @override
//   State<TextFormSignUp> createState() => _TextFormSignUpState();
// }
//
// class _TextFormSignUpState extends State<TextFormSignUp> {
//   bool isRememberMe = false;
//   bool prising = false;
//   bool _isLoading = false;
//   final formKey = GlobalKey<FormState>();
//   String email = "";
//   String password = "";
//   String fullName = "";
//   AuthService authService = AuthService();
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.all(size.height * 0.01),
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 6,
//                     offset: Offset(0, 2))
//               ]),
//           height: 60,
//           child:  TextFormField(
//             onChanged: (val) {
//               setState(() {
//                 fullName = val;
//               });
//             },
//             validator: (val) {
//               if (val!.isNotEmpty) {
//                 return null;
//               } else {
//                 return "Name cannot be empty";
//               }
//             },
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(color: Colors.black87),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Image(image: AssetImage("assets/Profile.png")),
//                 hintText: 'Name',
//                 hintStyle: TextStyle(color: Colors.black38)),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(size.height * 0.01),
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 6,
//                     offset: Offset(0, 2))
//               ]),
//           height: 60,
//           child:  TextFormField(
//             onChanged: (val) {
//               setState(() {
//                 email = val;
//               });
//             },
//
//             // check tha validation
//             validator: (val) {
//               return RegExp(
//                   r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                   .hasMatch(val!)
//                   ? null
//                   : "Please enter a valid email";
//             },
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(color: Colors.black87),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Image(image: AssetImage("assets/Message.png")),
//                 hintText: 'Email',
//                 hintStyle: TextStyle(color: Colors.black38)),
//           ),
//         ),
//         const SizedBox(
//           height: 6,
//         ),
//         Container(
//           margin: EdgeInsets.all(size.height * 0.01),
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 6,
//                     offset: Offset(0, 2))
//               ]),
//           height: 60,
//           child:  TextFormField(
//             obscureText: true,
//             style: TextStyle(color: Colors.black87),
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(top: 14),
//                 prefixIcon: Image(image: AssetImage("assets/Lock.png")),
//                 hintText: 'Password',
//                 hintStyle: TextStyle(color: Colors.black38)),
//             validator: (val) {
//               if (val!.length < 6) {
//                 return "Password must be at least 6 characters";
//               } else {
//                 return null;
//               }
//             },
//             onChanged: (val) {
//               setState(() {
//                 password = val;
//               });
//             },
//           ),
//         ),
//         SizedBox(
//           height: 20,
//           child: Row(
//             children: <Widget>[
//               Theme(
//                   data: ThemeData(unselectedWidgetColor: Colors.black12),
//                   child: Checkbox(
//                     value: isRememberMe,
//                     checkColor: Colors.white,
//                     activeColor: Colors.green,
//                     onChanged: (value) {
//
//                       setState(() {
//                         isRememberMe = value??false;
//                       });
//                     },
//
//                   ),),
//               const Text("Keep Me Signed In",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold
//               ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//           child: Row(
//             children: <Widget>[
//               Theme(
//                   data: ThemeData(unselectedWidgetColor: Colors.black12),
//                   child: Checkbox(
//                     value: prising,
//                     checkColor: Colors.white,
//                     activeColor: Colors.green,
//                     onChanged: (value) {
//
//                       setState(() {
//                         prising = value??false;
//                       });
//                     },
//
//                   ),),
//               const Text("Email Me About Pricing",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold
//               ),
//               )
//             ],
//           ),
//         ),
//             Container(
//             margin: EdgeInsets.all( size.height*0.03),
//     padding: EdgeInsets.symmetric(horizontal:size.height*0.13),
//     height: size.height*0.08,
//     width: double.infinity,
//     child: ElevatedButton(
//     style: ButtonStyle(
//
//     backgroundColor: MaterialStateProperty.all<Color>(iconColor),
//
//     shape: MaterialStateProperty.all(RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(16),
//     )),
//     elevation: const MaterialStatePropertyAll(5),
//     padding: const MaterialStatePropertyAll(EdgeInsets.all(15))),
//     onPressed: () => {
//     register(),
//     // Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false),
//     },
//     child: const Text(
//     "Create Account",
//     style: TextStyle(
//     color:  Colors.white ,
//     fontSize: 18,
//     fontWeight: FontWeight.bold
//     ),
//     ),
//     ),
//     ),
//       ],
//     );
//   }
//   register() async {
//     if (formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true;
//       });
//       await authService
//           .registerUserWithEmailandPassword(fullName, email, password)
//           .then((value) async {
//         if (value == true) {
//           // saving the shared preference state
//           // await HelperFunctions.saveUserLoggedInStatus(true);
//           // await HelperFunctions.saveUserEmailSF(email);
//           await HelperFunctions.saveUserNameSF(fullName);
//           // nextScreenReplace(context, const HomePage());
//         } else {
//           // showSnackbar(context, Colors.red, value);
//           setState(() {
//             _isLoading = false;
//           });
//         }
//       });
//     }
// }
