import 'dart:convert';

class Restaurant {
  String id;
  String name;
  String image;
  String contact;

  Restaurant(
      {required this.id,
      required this.name,
      required this.image,
      required this.contact});

  factory Restaurant.fromJSON(jsonData) {
    return Restaurant(
      id: jsonData['id'],
      name: jsonData['name'],
      image: jsonData['image'],
      contact: jsonData['contact'],
    );
  }

  toJSON() {
    return jsonEncode({
      'id': id,
      'name': name,
      'image': image,
      'contact': contact,
    });
  }
}
