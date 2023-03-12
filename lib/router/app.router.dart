import 'package:flutter/material.dart';
import 'package:untitled11/model/component/buttom.dart';
import 'package:untitled11/model/component/restaurantButton.dart';
import 'package:untitled11/model/component/viewMorePopular.dart';
import 'package:untitled11/view/chat/call/callPhone.dart';
import 'package:untitled11/view/locationPage.dart';
import 'package:untitled11/view/nearestRestaurant.dart';
import 'package:untitled11/view/notificationPage.dart';
import 'package:untitled11/view/signIn.dart';
import 'package:untitled11/view/signUp.dart';
import 'package:untitled11/view/verification.dart';
import 'package:untitled11/view/yourBio.dart';
import 'package:untitled11/screens/SplashScreen.dart';
import 'package:untitled11/constants/screens.dart' as screens;
import 'package:untitled11/screens/Splash_Screen2.dart';

import '../screens/congrates.dart';
import '../screens/successNotif.dart';
import '../view/chat/call/callPhoneMute.dart';
import '../view/chat/chatScrean.dart';

class AppRouter {
  late Widget startScreen;
  Route? onGenerateRoute(RouteSettings settings) {
    startScreen = const splash_screen();
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case screens.splashScreen2:
        return MaterialPageRoute(builder: (_) => const Splash_Screen2());
      case screens.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case screens.notificationPage:
        return MaterialPageRoute(builder: (_) => const notificationWidget());
      case screens.viewMoreRestaurant:
        return MaterialPageRoute(builder: (_) => const NearestRestaurant());
      case screens.viewMorePopular:
        return MaterialPageRoute(builder: (_) => RestaurantButton());
      case screens.signin:
        return MaterialPageRoute(builder: (_) => SignIn());
      case screens.signup:
        return MaterialPageRoute(builder: (_) => SignUp());
      case screens.verification:
        return MaterialPageRoute(builder: (_) => Verification());
      case screens.viewMorePopularMenu:
        return MaterialPageRoute(builder: (_) => ViewMorePopular());
      case screens.notificationWidget:
        return MaterialPageRoute(builder: (_) => notificationWidget());
      case screens.YourBio:
        return MaterialPageRoute(builder: (_) => YourBio());
      case screens.locationPage:
        return MaterialPageRoute(builder: (_) => LocationPage());
      case screens.Congrates:
        return MaterialPageRoute(builder: (_) => Congrates());
      case screens.callPhone:
        return MaterialPageRoute(builder: (_) => CallPhone());
      case screens.ChatScreen:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case screens.CallPhoneMute:
        return MaterialPageRoute(builder: (_) => CallPhoneMute());
      case screens.successNotif:
        return MaterialPageRoute(builder: (_) => successNotif());
      default:
        return null;
    }
  }
}
