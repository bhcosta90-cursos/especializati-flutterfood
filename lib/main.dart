import 'package:flutter/material.dart';
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
            primary: Color.fromRGBO(147, 70, 248, 1),
            secondary: Colors.black,
            brightness: Brightness.dark,
          ),
        ),
        home: LoginPage());
  }
}
