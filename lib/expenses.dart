import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_mod.dart';
import 'package:expense_tracker/expense_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 599,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Movie',
        amount: 300,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpenseList(expenses: _registeredExpenses),
          )
        ],
      ),
    );
  }
}
