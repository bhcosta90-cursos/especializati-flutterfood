import 'package:flutter/material.dart';
import './widgets/restaurant_card.dart';
import './../../models/restaurant.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final List<Restaurant> _restaurants = [
    Restaurant(
        id: '1', name: 'testing 1', image: '', contact: 'bhcosta90@gmail.com'),
    Restaurant(
        id: '2', name: 'testing 2', image: '', contact: 'bhcosta91@gmail.com'),
    Restaurant(
        id: '3', name: 'testing 3', image: '', contact: 'bhcosta92@gmail.com'),
    Restaurant(
        id: '4', name: 'testing 4', image: '', contact: 'bhcosta93@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Restaurantes',
              style:
                  TextStyle(color: Theme.of(context).colorScheme.background)),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: _buildRestaurants(context));
  }

  Widget _buildRestaurants(context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final Restaurant item = _restaurants[index];
          return RestaurantCard(
              id: item.id,
              name: item.name,
              contact: item.contact,
              image: item.image);
        },
        itemCount: _restaurants.length);
  }
}
