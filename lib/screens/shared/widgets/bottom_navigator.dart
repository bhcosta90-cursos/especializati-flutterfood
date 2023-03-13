import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigator extends StatelessWidget {
  int itemActive = 0;

  BottomNavigator(this.itemActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Theme.of(context).colorScheme.primary,
      backgroundColor: Theme.of(context).colorScheme.background,
      height: 45,
      index: itemActive,
      items: const [
        Icon(Icons.home),
        Icon(Icons.list),
        Icon(Icons.shopping_cart),
        Icon(Icons.supervised_user_circle),
      ],
      onTap: (index) {
        switch (index) {
          case 2:
            Navigator.pushReplacementNamed(context, '/cart');
            break;
          default:
            Navigator.pushReplacementNamed(context, '/restaurants');
            break;
        }
      },
    );
  }
}
