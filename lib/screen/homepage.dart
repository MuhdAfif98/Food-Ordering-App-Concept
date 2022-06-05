import 'package:cafe_ordering_app/constant.dart';
import 'package:cafe_ordering_app/screen/custom_food.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering App Concept',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Iconsax.menu_1,
            color: Colors.black,
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Iconsax.shopping_bag,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hungry?",
                  style: textStyleSemiBold(24)
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Let's order something!",
                  style: textStyleNormal(14)
                ),
                const SizedBox(
                  height: 14,
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: kElevationToShadow[8]),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Search Food",
                        prefixIcon: Icon(
                          Iconsax.search_normal,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Iconsax.setting_3,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Categories",
                  style: textStyleSemiBold(14)
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  height: 150,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      category("assets/burger.png", "Burger",
                          const Color.fromRGBO(255, 0, 0, 0.2)),
                      category("assets/fries.png", "Snacks",
                          const Color.fromRGBO(36, 255, 0, 0.2)),
                      category("assets/drink.png", "Drinks",
                          const Color.fromRGBO(0, 255, 224, 0.2)),
                      category("assets/ice cream.png", "Dessert",
                          const Color.fromRGBO(255, 0, 255, 0.2)),
                    ],
                  ),
                ),
                Text(
                  "Popular Menu",
                  style: textStyleSemiBold(14)
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    popularMenu(
                        "assets/popular_menu/cocktail1.jpg",
                        "Lime Cocktail",
                        "MYR 12.00",
                        "assets/popular_menu/berry.jpg",
                        "Mixed Berry Slurpy",
                        "MYR 10.00"),
                    const SizedBox(
                      height: 18,
                    ),
                    popularMenu(
                        "assets/popular_menu/pineapple.jpg",
                        "Pineapple Juice",
                        "MYR 16.00",
                        "assets/popular_menu/spinach.jpg",
                        "Spinach Apple Juice",
                        "MYR 18.00"),
                    const SizedBox(
                      height: 18,
                    ),
                    popularMenu(
                        "assets/popular_menu/strawberry.jpg",
                        "Strawberry Mixed",
                        "MYR 22.00",
                        "assets/popular_menu/cocktail2.jpg",
                        "Secret Water",
                        "MYR 25.00")
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Row popularMenu(String assetName, title, price, assetName2, title2, price2) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomFoodScreen()),
              );
            },
            child: Container(
              height: 165,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(assetName)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4))
                  ]),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          style: textStyleNormal(14)
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          price,
                          style: textStyleBold(12)
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomFoodScreen()),
              );
            },
            child: Container(
              height: 165,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(assetName2)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4))
                  ]),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          title2,
                          style: textStyleNormal(14)
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          price2,
                          style: textStyleBold(12)
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  InkWell category(String image, title, Color colors) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: colors,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(image)),
                    ),
                  ),
                ],
              )),
          Text(
            title,
            style: textStyleNormal(13)
          )
        ],
      ),
    );
  }
}
