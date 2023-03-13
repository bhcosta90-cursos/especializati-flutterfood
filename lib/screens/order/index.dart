import 'package:flutter/material.dart';
import './widgets/order.dart';
import '../../models/order.dart';
import './../shared/widgets/bottom_navigator.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Order> _orders = [
    new Order(
        comment: 'testing',
        date: '01/01/2020',
        total: 100,
        status: 'PENDING',
        evaluations: [],
        foods: [],
        id: '1216161',
        identify: '15616161'),
    new Order(
        comment: 'testing 2',
        date: '01/01/2020',
        total: 100,
        status: 'PENDING',
        evaluations: [],
        foods: [],
        id: '1216162',
        identify: '15616162'),
    new Order(
        comment: 'testing 3',
        date: '01/01/2020',
        total: 100,
        status: 'PENDING',
        evaluations: [],
        foods: [],
        id: '1216163',
        identify: '15616163'),
    new Order(
        comment: 'testing 4',
        date: '01/01/2020',
        total: 100,
        status: 'PENDING',
        evaluations: [],
        foods: [],
        id: '1216164',
        identify: '15616164'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meus pedidos',
              style:
                  TextStyle(color: Theme.of(context).colorScheme.background)),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: BottomNavigator(1),
        body: _buildPage(context));
  }

  Widget _buildPage(context) {
    return Column(
      children: [
        _builderHeader(context),
      ],
    );
  }

  Widget _builderHeader(context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return OrderWidget(_orders[index]);
          },
          itemCount: _orders.length),
    );
  }
}
