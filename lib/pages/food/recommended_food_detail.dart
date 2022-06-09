import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 80,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.clear),
              AppIcon(icon: Icons.shopping_cart)
            ],
          ),
          bottom: PreferredSize(
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Vegetables",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
              preferredSize: Size.fromHeight(20)),
          pinned: true,
          backgroundColor: Colors.redAccent,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/vegetables1.jpeg",
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds. An alternative definition of the term is applied somewhat arbitrarily, often by culinary and cultural tradition. It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savoury fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.Originally, vegetables were collected from the wild by hunter-gatherers and entered cultivation in several parts of the world, probably during the period 10,000 BC to 7,000 BC, when a new agricultural way of life developed. At first, plants which grew locally would have been cultivated, but as time went on, trade brought exotic crops from elsewhere to add to domestic types. Nowadays, most vegetables are grown all over the world as climate permits, and crops may be cultivated in protected environments in less suitable locations. China is the largest producer of vegetables, and global trade in agricultural products allows consumers to purchase vegetables grown in faraway countries. The scale of production varies from subsistence farmers supplying the needs of their family for food, to agribusinesses with vast acreages of single-product crops. Depending on the type of vegetable concerned, harvesting the crop is followed by grading, storing, processing, and marketing.Vegetables can be eaten either raw or cooked and play an important role in human nutrition, being mostly low in fat and carbohydrates, but high in vitamins, minerals and dietary fiber. Many nutritionists encourage people to consume plenty of fruit and vegetables, five or more portions a day often being recommended.Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter, including the flowers, fruits, stems, leaves, roots, and seeds. An alternative definition of the term is applied somewhat arbitrarily, often by culinary and cultural tradition. It may exclude foods derived from some plants that are fruits, flowers, nuts, and cereal grains, but include savoury fruits such as tomatoes and courgettes, flowers such as broccoli, and seeds such as pulses.Originally, vegetables were collected from the wild by hunter-gatherers and entered cultivation in several parts of the world, probably during the period 10,000 BC to 7,000 BC, when a new agricultural way of life developed. At first, plants which grew locally would have been cultivated, but as time went on, trade brought exotic crops from elsewhere to add to domestic types. Nowadays, most vegetables are grown all over the world as climate permits, and crops may be cultivated in protected environments in less suitable locations. China is the largest producer of vegetables, and global trade in agricultural products allows consumers to purchase vegetables grown in faraway countries. The scale of production varies from subsistence farmers supplying the needs of their family for food, to agribusinesses with vast acreages of single-product crops. Depending on the type of vegetable concerned, harvesting the crop is followed by grading, storing, processing, and marketing.Vegetables can be eaten either raw or cooked and play an important role in human nutrition, being mostly low in fat and carbohydrates, but high in vitamins, minerals and dietary fiber. Many nutritionists encourage people to consume plenty of fruit and vegetables, five or more portions a day often being recommended."),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize: Dimensions.iconSize24, icon: Icons.remove),
                BigText(text: "\$12.88 " + "X " + "0"),
                AppIcon(icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeight,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: Color.fromARGB(179, 243, 241, 241),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width10),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.lightBlue,
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width10),
                  child: BigText(text: "\$10 | Add to Cart"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.lightBlue),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
