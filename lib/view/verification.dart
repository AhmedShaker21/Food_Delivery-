import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;
import 'package:untitled11/view/forgetPassword.dart';




class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


  return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: <Widget>[
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
                          padding: EdgeInsets.symmetric( vertical: 50 , horizontal: 25),
                          child:        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height*0.06,
                                width: size.width*0.13,
                                decoration: BoxDecoration(
                                  color: searchColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(Icons.arrow_back_ios_new,color:IconOrange ),
                              ),
                              SizedBox(height: size.height*0.02,),
                              Text("Enter 4-digit \nVerification code" , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                            ],
                          ),

                        ),

                      ],
                    ),
                  ],
                ),
                OtpForm(),
                SizedBox(
                  height: size.height*0.39,
                ),
                SizedBox(
                  width: 157,
                  height: 57,
                  child: ElevatedButton(
                      onPressed: () =>
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) =>
                const ForgetPassword()),
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
        ),
      ),

    );
  }
}






class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(

                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  onSaved: (pin1) {},
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black26),
                          borderRadius: BorderRadius.circular(12)),

                      hintText: "   0"),
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black26),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "   0"),
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black26),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "   0"),
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black26),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "   0"),
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
          ],
        ),

      ),
    );
  }
}
