import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

class HaveAccount extends StatefulWidget {
  const HaveAccount({Key? key}) : super(key: key);

  @override
  State<HaveAccount> createState() => _HaveAccountState();
}

class _HaveAccountState extends State<HaveAccount> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GestureDetector(
          onTap: () => {
            Navigator.of(context).pushNamedAndRemoveUntil(screens.signin, (route) => false),
          },

          child: const Text(
            "already have an account?",
            style: TextStyle(
                color: iconColor,
                fontSize: 15

            ),
          )
      ),
    );
  }
}
