// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled11/component/constants.dart';
// import 'package:untitled11/constants/screens.dart' as screens ;
//
// class ButtonSignUp extends StatelessWidget {
//   const ButtonSignUp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     return Container(
//       margin: EdgeInsets.all( size.height*0.03),
//       padding: EdgeInsets.symmetric(horizontal:size.height*0.13),
//     height: size.height*0.08,
//       width: double.infinity,
//       child: ElevatedButton(
//         style: ButtonStyle(
//
//             backgroundColor: MaterialStateProperty.all<Color>(iconColor),
//
//             shape: MaterialStateProperty.all(RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             )),
//             elevation: const MaterialStatePropertyAll(5),
//             padding: const MaterialStatePropertyAll(EdgeInsets.all(15))),
//         onPressed: () => {
//         register(),
//           // Navigator.of(context).pushNamedAndRemoveUntil(screens.home, (route) => false),
//         },
//         child: const Text(
//           "Create Account",
//           style: TextStyle(
//               color:  Colors.white ,
//               fontSize: 18,
//               fontWeight: FontWeight.bold
//           ),
//         ),
//       ),
//     );
//   }
// }
