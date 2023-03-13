import 'dart:convert';

class Food {
  String id;
  String title;
  String? image;
  String description;
  double price;

  Food(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      required this.description});

  factory Food.fromJSON(jsonData) {
    return Food(
      id: jsonData['id'],
      title: jsonData['title'],
      image: jsonData['image'],
      price: jsonData['price'],
      description: jsonData['description'],
    );
  }

  toJSON() {
    return jsonEncode({
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'description': description,
    });
  }
}
