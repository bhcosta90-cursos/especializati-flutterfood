import 'package:flutter/material.dart';
import 'package:flutterfood/models/order.dart';

class OrderWidget extends StatelessWidget {
  Order order;

  OrderWidget(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Pedido #${order.id}",
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
      subtitle: Text(
        "Data ${order.date}",
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
      trailing: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.primary),
        child: const Icon(Icons.navigate_next),
      ),
      onTap: () {
        print("oi");
      },
    );
  }
}
