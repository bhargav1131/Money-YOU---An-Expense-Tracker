import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expenses(), // from file expenses.dart
    )
  );
}