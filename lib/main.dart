import 'package:flutter/material.dart';
import './screens/order/index.dart';
import './screens/foods/index.dart';
import './screens/restaurant/index.dart';
import './screens/cart/index.dart';
import './screens/auth/register.dart';
import './screens/auth/login.dart';

void main() => runApp(const FlutterFood());

class FlutterFood extends StatelessWidget {
  const FlutterFood({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Food',
        theme: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              background: Colors.white,
              primary: const Color.fromRGBO(147, 70, 248, 1),
              secondary: Colors.green,
              brightness: Brightness.dark,
            ),
            iconTheme: const IconThemeData(color: Colors.white)),
        initialRoute: '/login',
        routes: <String, WidgetBuilder>{
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/restaurants': (context) => RestaurantPage(),
          '/foods': (context) => FoodPage(),
          '/cart': (context) => CartPage(),
          '/order': (context) => OrderPage(),
        });
  }
}
