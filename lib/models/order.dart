import 'dart:convert';

import './evaluation.dart';
import './food.dart';

class Order {
  String id;
  String identify;
  String date;
  String status;
  double total;
  String comment;
  List<Food> foods;
  List<Evaluation> evaluations;

  Order(
      {required this.id,
      required this.identify,
      required this.date,
      required this.status,
      required this.total,
      required this.comment,
      required this.foods,
      required this.evaluations});

  factory Order.fromJson(jsonData) {
    return Order(
      id: jsonData['id'],
      identify: jsonData['identify'],
      date: jsonData['date'],
      status: jsonData['status'],
      total: double.parse(jsonData['total'].toString()),
      comment: jsonData['comment'],
      foods: jsonData['products'],
      evaluations: jsonData['evaluations'],
    );
  }

  toJson() {
    return jsonEncode({
      'id': id,
      'identify': identify,
      'date': date,
      'status': status,
      'total': total,
      'comment': comment,
      'foods': foods,
      'evaluations': evaluations,
    });
  }
}
