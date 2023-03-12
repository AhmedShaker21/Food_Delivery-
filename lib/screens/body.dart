import 'package:flutter/material.dart';
import 'package:untitled11/model/component/productCard.dart';
import '../model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens ;


class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Nearest Restaurant",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              GestureDetector(
                  onTap: () => {
                  Navigator.of(context).pushNamedAndRemoveUntil(screens.viewMoreRestaurant, (route) => false),
              },

                  child: const Text(
                    "View More",
                    style: viewMore,
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ProductCard(),
          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Popular Menu", style: textLargeFont),
              GestureDetector(
                  onTap: () => {
                  Navigator.of(context).pushNamedAndRemoveUntil(screens.viewMorePopular, (route) => false)

                      },
                  child: const Text(
                    "View More",
                    style: viewMore,
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: size.height*0.11,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset("assets/Photo Menu.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Green Noddle", style: textLargeFont),
                          SizedBox(height: 8),
                          Text("Noodle Home", style: textSmallFont),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "\$15",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFEAD10)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
