import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor:const Color.fromARGB(255, 45, 67, 209));
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      colorScheme: kColorScheme,

      appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer
        ),

      cardTheme: const CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer
        ),
      ),

      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.normal, color: kColorScheme.onSecondaryContainer),
      )
    ),
    home: const Expenses(), // from file expenses.dart
  ));
}
