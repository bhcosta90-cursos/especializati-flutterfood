import 'package:flutter/material.dart';
import './../../shared/widgets/image.dart';

class RestaurantCard extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String contact;

  const RestaurantCard(
      {required this.id,
      required this.name,
      required this.image,
      required this.contact,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/foods');
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(1, 4, 1, 0),
        child: Card(
          elevation: 2.5,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding: const EdgeInsets.all(4),
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
                  const VerticalDivider(
                    color: Colors.black54,
                  ),
                  Expanded(
                      child: Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
