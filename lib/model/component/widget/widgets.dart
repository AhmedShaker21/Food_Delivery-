import 'package:flutter/material.dart';

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
void showSnackbar(context , color , message){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message , style: TextStyle(fontSize: 14,),),
        backgroundColor: color,
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          label: "OK",
          onPressed: () {

          },
          textColor: Colors.white,
        ),
      )

  );
}
