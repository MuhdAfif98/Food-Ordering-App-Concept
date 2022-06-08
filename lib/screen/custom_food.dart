import 'package:cached_network_image/cached_network_image.dart';
import 'package:cafe_ordering_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class CustomFoodScreen extends StatefulWidget {
  const CustomFoodScreen({Key? key}) : super(key: key);

  @override
  State<CustomFoodScreen> createState() => _CustomFoodScreenState();
}

class _CustomFoodScreenState extends State<CustomFoodScreen> {
  double _valuePatty = 0;
  double _valueSpicy = 0;
  int quantity = 0;

  List<String> burgerList = [
    "assets/burger_list/burger1.jpg",
    "assets/burger_list/burger2.jpg",
    "assets/burger_list/burger3.jpg",
    "assets/burger_list/burger4.jpg",
    "assets/burger_list/burger5.jpg",
    "assets/burger_list/burger6.jpg",
    "assets/burger_list/burger7.jpg",
    "assets/burger_list/burger8.jpg",
    "assets/burger_list/burger9.jpg",
    "assets/burger_list/burger10.jpg",
    "assets/burger_list/burger11.jpg",
    "assets/burger_list/burger12.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Iconsax.arrow_left_2,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Burger",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Iconsax.element_3,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Row(children: [
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/burger/burger1.jpg",
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Text("Sumo Burger", style: textStyleBold(26)),
                        const SizedBox(
                          height: 3,
                        ),
                        Text("Mad Burger Restaurant",
                            style: textStyleNormal(14)),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade900,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text("4.5", style: textStyleSemiBold(14)),
                            Text(
                              "(40 reviews)",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.35),
                                  fontSize: 14),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text("RM 16.90", style: textStyleBold(26)),
                        const SizedBox(
                          height: 13,
                        ),
                        const Text(
                          "Enjoy the nourishment and tasty flavor of blackpepper sauce made from black pepper",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Text("Patty option", style: textStyleSemiBold(14)),
                        const SizedBox(
                          height: 18,
                        ),
                        SfSlider(
                          activeColor: const Color.fromARGB(255, 243, 167, 52),
                          value: _valuePatty,
                          onChanged: (dynamic value) {
                            setState(() {
                              _valuePatty = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Text("Thin", style: textStyleNormal(14)),
                              const Spacer(),
                              Text("Medium", style: textStyleSemiBold(14)),
                              const Spacer(),
                              Text("Thick", style: textStyleBold(14)),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text("Spiciness", style: textStyleSemiBold(14)),
                        const SizedBox(
                          height: 18,
                        ),
                        SfSlider(
                          activeColor: const Color.fromARGB(255, 243, 167, 52),
                          value: _valueSpicy,
                          onChanged: (dynamic value) {
                            setState(() {
                              _valueSpicy = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Text("Mild", style: textStyleNormal(14)),
                              const Spacer(),
                              const Text(
                                "Medium",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 243, 167, 52),
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "Spicy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text("Quantity", style: textStyleSemiBold(14)),
                        const SizedBox(
                          height: 10,
                        ),
                        QuantityInput(
                            minValue: 1,
                            inputWidth: 50,
                            buttonColor:
                                const Color.fromARGB(255, 255, 211, 146),
                            iconColor: Colors.black,
                            value: quantity,
                            onChanged: (value) => setState(() => quantity =
                                int.parse(value.replaceAll(',', '')))),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Container(
                              width: 20,
                              height: 50,
                              decoration: BoxDecoration(
                                  boxShadow: [shadowList()],
                                  color:
                                      const Color.fromARGB(255, 255, 111, 111),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Iconsax.shopping_cart),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Add to Cart",
                                      style: textStyleSemiBold(14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    //PAKAI .BUILDER
                    ListView.builder(
                      itemCount: burgerList.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 0,
                                      color: Colors.black.withOpacity(0.3),
                                      offset: const Offset(0, 4))
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                burgerList[index],
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }

  Padding listBurger() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 4))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/burger/burger1nobg.png",
          ),
        ),
      ),
    );
  }
}
