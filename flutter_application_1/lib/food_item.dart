import 'package:flutter/material.dart';
import 'package:flutter_application_1/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  const FoodItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(children: [
        Container(
            padding: const EdgeInsets.all(5),
            width: 70,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                food.imgUrl.toString(),
              ),
            )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    food.name.toString(),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    food.price.toString(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    food.ingredients.toString(),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: false,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
                ],
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
