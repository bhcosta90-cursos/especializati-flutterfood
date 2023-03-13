import 'package:flutter/material.dart';
import './../../shared/widgets/image.dart';

class FoodCard extends StatelessWidget {
  String id;
  String title;
  String? image;
  String description;
  double price;

  FoodCard(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2.5,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade100),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                const SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipOval(
                    child: ImageWidget(
                        image: 'http://via.placeholder.com/350x200'),
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Container(height: 5),
                      Text(description,
                          style: const TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      Container(height: 7),
                      Text("R\$ $price",
                          style: const TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
                Container(
                    child: IconTheme(
                        data: IconThemeData(
                            color: Theme.of(context).colorScheme.primary),
                        child: Icon(Icons.shopping_cart)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
