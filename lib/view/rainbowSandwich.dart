import 'package:flutter/material.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/constants/screens.dart' as screens;

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(

        children: [
          CustomScrollView(
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
                    'assets/Rainbow.png',
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
                            "Rainbow Sandwich \nSugarless",
                            style: textLargeFont,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children:  [
                          const Icon(
                            Icons.location_on_outlined,
                            color: iconColor,
                          ),
                          const Text(
                            "4.8 Rating",
                            style: textSmallFont,
                          ),
                          SizedBox(
                            width: size.width*0.05,
                          ),
                          const Icon(
                            Icons.shopping_bag_outlined,
                            color: iconColor,
                          ),
                          const Text("2000+ Order", style: textSmallFont),
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
                      const Text(
                          "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n.Strowberry\n\n .Cream\n\n .wheat\n\n Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt."),
                      SizedBox(
                        height: size.height * 0.02,
                      ),


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

                              const SizedBox(height: 8),
                              const Text("This is great, so delicious! You Must\n Here With Your family...",),
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

                              const SizedBox(height: 8),
                              const Text("This is great, so delicious! You Must\n Here With Your family...",),
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
          Positioned(
            height: size.height*0.06,
            bottom: size.height*0.02,
            width: size.width*0.9,
            left: size.height*0.03,
            child: ElevatedButton(
              onPressed: (){},
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xff53E88B)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                child: const Text(
                  'Add To Chart',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )),
          ),
        ],
      ),
    );
  }
}
