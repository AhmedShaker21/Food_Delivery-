import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
import 'constants.dart';

class BuildForgetPassword extends StatelessWidget {
  const BuildForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: GestureDetector(
            onTap: () => {
              Navigator.of(context).pushNamedAndRemoveUntil(screens.verification, (route) => false),
            },

            child: const Text(
              "Forget Your Password?",
              style: TextStyle(
                  color: iconColor,
                fontSize: 15

              ),
            )
    ),
      );
  }
}
