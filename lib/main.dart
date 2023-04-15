import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/router/app.router.dart';
import 'package:untitled11/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled11/view/orderDetails.dart';

import 'controller/helper/helper_function.dart';
import 'controller/shared/constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appID,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId)
    );
  }else{
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {

    await HelperFunctions.getUserLoggedInStatus().then((value) {

      if (value != null) {
        setState(() {
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: const MyHomePage(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const splash_screen())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/fullPattern.png", width: size.width),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.4,
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
                    style: TextStyle(fontWeight: FontWeight.bold , fontFamily: "BentonSans Bold"),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
