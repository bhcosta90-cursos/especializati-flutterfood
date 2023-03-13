import 'package:flutter/material.dart';
import './../../models/category.dart';
import './../../models/food.dart';

import './categories.dart';
import './foods.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final List<Food> _foods = [
    Food(
        id: '123',
        description: 'testing',
        image: null,
        price: 50,
        title: 'testing'),
    Food(
        id: '456',
        description: 'testing - 2',
        image: null,
        price: 50,
        title: 'testing - 2'),
    Food(
        id: '789',
        description: 'testing - 3',
        image: null,
        price: 50,
        title: 'testing - 3'),
    Food(
        id: '876',
        description: 'testing - 4',
        image: null,
        price: 50,
        title: 'testing - 4'),
    Food(
        id: '543',
        description: 'testing - 5',
        image: null,
        price: 50,
        title: 'testing - 5'),
    Food(
        id: '210',
        description: 'testing - 6',
        image: null,
        price: 50,
        title: 'testing - 6'),
  ];

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
        body: _buildPage(context));
  }

  Widget _buildPage(context) {
    return Column(
      children: <Widget>[CategoryWidget(_categories), FoodWidget(_foods)],
    );
  }
}
