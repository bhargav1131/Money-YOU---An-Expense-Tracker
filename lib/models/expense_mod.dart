import 'package:uuid/uuid.dart';

const uuid = Uuid(); // for generating unique ids

class Expense {
  Expense({required this.title, required this.amount, required this.date}) : id = uuid.v4(); //initialiser list

  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
