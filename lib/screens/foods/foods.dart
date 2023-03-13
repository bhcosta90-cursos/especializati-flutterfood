import 'package:flutter/material.dart';
import './widgets/food_card.dart';
import '../../models/food.dart';

class FoodWidget extends StatelessWidget {
  final List<Food> foods;

  const FoodWidget(this.foods, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 190,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemBuilder: (context, index) {
            final Food item = foods[index];
            return FoodCard(
                id: item.id,
                description: item.description,
                image: item.image,
                price: item.price,
                title: item.title);
          },
          itemCount: foods.length),
    );
  }
}
