import 'package:flutter/material.dart';
import './../../models/category.dart';
import './../../models/food.dart';

import './categories.dart';
import './widgets/food_card.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final List<Food> _foods = [];
  final List<Category> _categories = [
    Category(id: '123', name: 'Salgados', description: 'description'),
    Category(id: '123', name: 'Refrigerantes', description: 'description'),
    Category(id: '123', name: 'Doces', description: 'description'),
    Category(id: '123', name: 'Pizzas', description: 'description'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cardápio',
              style:
                  TextStyle(color: Theme.of(context).colorScheme.background)),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: _buildFoods(context));
  }

  Widget _buildFoods(context) {
    return Column(
      children: <Widget>[
        CategoryWidget(_categories),
      ],
    );
  }
}
