import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid(); // for generating unique ids
final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food : Icons.lunch_dining,
  Category.travel : Icons.flight_takeoff,
  Category.leisure : Icons.movie,
  Category.work : Icons.work,
};

class Expense {
  Expense(
      {
      required this.title,
      required this.amount,
      required this.date,
      required this.category
      }): id = uuid.v4(); //initialiser list

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatttedDate{
    return formatter.format(date);
  }
}
