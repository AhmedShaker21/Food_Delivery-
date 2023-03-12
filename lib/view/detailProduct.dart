import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens;

class DetailProduct extends StatelessWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/Scrooll Tools.png"),
                )),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/Photo Restaurant.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE5FFEE),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Popular",
                            style: TextStyle(color: iconColor, fontSize: 15),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFE5FFEE),
                                  borderRadius: BorderRadius.circular(35)),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.location_on,
                                  color: iconColor,
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFFF8D6D4),
                                    borderRadius: BorderRadius.circular(35)),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Wijie Bar and Resto",
                        style: textLargeFont,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: iconColor,
                      ),
                      Text(
                        "19 Km",
                        style: textSmallFont,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star_half,
                        color: iconColor,
                      ),
                      Text("4.8 Rating", style: textSmallFont),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    child: const Text(
                        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . ."),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Popular Menu",
                        style: textLargeFont,
                      ),
                      GestureDetector(
                          onTap: () => {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    screens.viewMorePopularMenu,
                                    (route) => false),
                              },
                          child: const Text(
                            "View More",
                            style: viewMore,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.21,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            child: Container(
                              width: size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/pizza.png"),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 7),
                                        child: Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "BentonSans Bold"),
                                        ),
                                      ),
                                      const Text(
                                        "12 \$",
                                        style: textSmallFont,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            child: Container(
                              width: size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/Meat.png"),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 7),
                                        child: Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "BentonSans Bold"),
                                        ),
                                      ),
                                      const Text(
                                        "16 \$",
                                        style: textSmallFont,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            child: Container(
                              width: size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/1.png"),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 7),
                                        child: Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "BentonSans Bold"),
                                        ),
                                      ),
                                      const Text(
                                        "35 \$",
                                        style: textSmallFont,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            child: Container(
                              width: size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/2.png"),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 7),
                                        child: Text(
                                          "Spacy fresh crab",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "BentonSans Bold"),
                                        ),
                                      ),
                                      const Text(
                                        "35 \$",
                                        style: textSmallFont,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height*0.05,),
                  Row(
                    children: const [
                      Text(   "Testimonials",
                        style: textLargeFont,)
                    ],
                 
                  ),
                  SizedBox(height: size.height*0.03,),
                  Row(
                    children: [
                      Container(
                        height: size.height*0.11,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset("assets/testimonialsPhoto.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Dianne Russell", style: textLargeFont),
                                  Text("12 April 2021" , style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                              SizedBox(width: size.width*0.19,),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE5FFEE),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.star , color:iconColor ),
                                      Text(" 5" , style: TextStyle(color: iconColor ,fontWeight: FontWeight.bold,fontSize: 20),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 8),
                          Text("This is great, so delicious! You Must\n Here With Your family...",),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height*0.03,),
                  Row(
                    children: [
                      Container(
                        height: size.height*0.11,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset("assets/testimonialsPhoto.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Dianne Russell", style: textLargeFont),
                                  Text("12 April 2021" , style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                              SizedBox(width: size.width*0.19,),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE5FFEE),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.star , color:iconColor ),
                                      Text(" 5" , style: TextStyle(color: iconColor ,fontWeight: FontWeight.bold,fontSize: 20),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 8),
                          Text("This is great, so delicious! You Must\n Here With Your family...",),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
