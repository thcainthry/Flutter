import 'package:flutter/material.dart';
import 'package:flutter_application_1/food.dart';
import 'package:flutter_application_1/food_item.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: FoodList(),
    ),
  ));
}

class FoodList extends StatelessWidget {
  final List<Food> foods = Food.generateRecommendFoods();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodItem(food: foods[index]);
      },
    );
  }
}
