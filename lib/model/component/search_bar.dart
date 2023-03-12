import 'package:flutter/material.dart';

import 'constants.dart';

class search_bar extends StatelessWidget {
  const search_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [

          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                  height: size.height*0.064,

                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: searchColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(

                          hintText: "What do you want to order?",
                          hintStyle: const TextStyle(color: searchBar, fontSize: 13),
                          icon: Image.asset("assets/Icon Search.png"),
                          border: InputBorder.none,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                          )),
                    ),
                  )),
            ),
          ),
          const SizedBox(width: 15,),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: size.height*0.06,
              width: size.width*0.06,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: searchColor),
                child: Image.asset("assets/Filter.png"),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
