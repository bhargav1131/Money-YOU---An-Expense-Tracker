import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_mod.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
          background: Container(color: Theme.of(context).colorScheme.error),
            key: ValueKey(expenses[index]),
            onDismissed: (direction){
              onRemoveExpense(expenses[index]);
            },
            child: ExpenseItem(expenses[index])));
  }
}
