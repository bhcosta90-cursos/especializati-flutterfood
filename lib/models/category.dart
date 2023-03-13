import 'dart:convert';

class Category {
  String id;
  String name;
  String description;

  Category({required this.id, required this.name, required this.description});

  factory Category.fromJSON(jsonData) {
    return Category(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
    );
  }

  toJSON() {
    return jsonEncode({
      'id': id,
      'name': name,
      'description': description,
    });
  }
}
