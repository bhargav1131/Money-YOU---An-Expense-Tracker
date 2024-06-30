import 'package:expense_tracker/models/expense_mod.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget{
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  
  @override
  Widget build(BuildContext context) {
      return Card(child: Text(expense.title),);
  }
}