import 'package:flutter/material.dart';
import './../../shared/widgets/image.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: Stack(children: [
        Container(
          height: 80,
          margin: EdgeInsets.only(top: 6, bottom: 6),
          padding: const EdgeInsetsDirectional.all(2),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border.all(color: Color.fromRGBO(238, 238, 238, 1)),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(children: [
            const SizedBox(
              width: 60,
              height: 60,
              child: ClipOval(
                child: ImageWidget(image: 'http://via.placeholder.com/350x200'),
              ),
            ),
            _showDetailItemCard(context),
          ]),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(top: 2, right: 4),
            padding: const EdgeInsetsDirectional.all(2),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Icon(Icons.close, size: 18, color: Colors.white),
          ),
        ),
      ]),
    );
  }

  Widget _showDetailItemCard(context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pizza Hut",
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary)),
                  Text("R\$ 50,00",
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.secondary)),
                ]),
            Row(
              children: [
                Icon(
                  Icons.remove,
                  size: 24,
                  color: Colors.grey.shade700,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 4, left: 12, right: 12),
                  color: Theme.of(context).colorScheme.primary,
                  child: const Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.grey.shade700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
