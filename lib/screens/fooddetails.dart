import 'package:flutter/material.dart';
import 'package:food_app/componets/button.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  // quantity
  int quantityCoun = 0;

  // decrement quantity
  void decrementQuantity() {
    setState(() {
      quantityCoun--;
    });
  }

  // increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCoun++;
    });
  }

  //Add to cart
  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listviwe of food details
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Expanded(
              child: ListView(
                children: [
                  // imgae
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // rating
                  Row(
                    children: [
                      // star Icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      // rating number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // description
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Delicate sliced, Fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice.",
                    style: TextStyle(
                        color: Colors.grey[600], fontSize: 14, height: 2),
                  ),
                ],
              ),
            ),
          ),

          //price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                //price + quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    Text(
                      "\$${widget.food.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //quantity
                    Row(
                      children: [
                        //minus
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          ),
                        ),
                        //quantity
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCoun.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        // plus button
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                //add to cart button
                Mybutton(text: "Add To Cart", onTap: addToCart)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
