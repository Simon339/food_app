import 'package:flutter/material.dart';
import 'package:food_app/componets/button.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/model/foodtile.dart';
import 'package:food_app/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fooddetails.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  //food menu
  List foodmenu = [
    // Shime-saba
    Food(
        name: "Shime-saba",
        price: "21.00",
        imagePath: "images/shime-saba.png",
        rating: "4"),
    //Sushi(many)
    Food(
        name: "Sushi",
        price: "24.00",
        imagePath: "images/sushi (many).png",
        rating: "4"),
    //Saba
    Food(
        name: "Saba",
        price: "20.00",
        imagePath: "images/saba.png",
        rating: "3.5"),
    //Sushi(roll)
    Food(
        name: "Sushi roll",
        price: "30.00",
        imagePath: "images/sushi (roll).png",
        rating: "5"),
    //Sushi(sekura)
    Food(
        name: "Sushi sekura",
        price: "28.00",
        imagePath: "images/saba.png",
        rating: "3"),
    //sushi
    Food(
        name: "Sushi",
        price: "35.00",
        imagePath: "images/sushi.png",
        rating: "4"),
  ];

  // navigate to food items details page
  void navigateToFoodDetials(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodmenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu_rounded,
          color: Colors.grey[900],
        ),
        title: Center(
          child: Text(
            'Food App',
            style: TextStyle(
              color: Colors.grey[900],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          //Promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //message promo
                    Text(
                      'Get 50% Prome',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // redem button
                    Mybutton(
                      text: 'Redeem',
                      onTap: () {},
                    ),
                  ],
                ),
                //image
                Image.asset(
                  'images/sushi (many).png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // Search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search here..."),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //meun list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodmenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodmenu[index],
                onTap: () => navigateToFoodDetials(index),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //image
                      Image.asset(
                        'images/sushi (roll).png',
                        height: 60,
                      ),

                      const SizedBox(height: 20),

                      //Name & Price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          Text(
                            "Sushi Roll",
                            style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                          ),

                          const SizedBox(
                            height: 25,
                          ),

                          Text(
                            '\$23.00',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ],
                  ),

                  //Heart
                  const Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                    size: 28,
                  )
                ]),
          )
        ],
      ),
    );
  }
}
