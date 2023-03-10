import 'package:flutter/material.dart';
import './../../../models/category.dart';

class CategoryWidget extends StatelessWidget {
  final List<Category> categories;

  const CategoryWidget(this.categories, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final Category item = categories[index];
            return _buildCategories(item);
          },
          itemCount: categories.length),
    );
  }

  Widget _buildCategories(Category category) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
          child: Text(
        category.name,
        style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      )),
    );
  }
}
