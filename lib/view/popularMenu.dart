import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/model/component/search_bar.dart';
import 'package:untitled11/constants/screens.dart' as screens ;

class PopularMenu extends StatefulWidget {
  const PopularMenu({super.key});

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children: [

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
    const Padding(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
    child: Text(
    "Find Your\nFavorite Food",
    style:
    TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    ),
    ),
    Container(
    height: size.height*0.06,
    width: size.width*0.13,
    decoration: BoxDecoration(
    color: backGroundIcon,
    borderRadius: BorderRadius.circular(15),
    ),
    child: InkWell(
    onTap: () {
    Navigator.of(context).pushNamedAndRemoveUntil(screens.notificationPage, (route) => false);
    },
    child: Image.asset("assets/IconNotifiaction (1).png")),
    ),
    ],
    ),
    ],
    ),
    const Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: search_bar(),
    ),

        ],
        ),
        ),
    );
  }
}
