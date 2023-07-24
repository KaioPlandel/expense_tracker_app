import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expenses_list.dart';
import 'models/expense.dart';

class Expense extends StatefulWidget {
  const Expense({Key? key}) : super(key: key);

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<Expenses> _resgisteredExpenses = [
    Expenses(
        title: "Flutter course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.food),
    Expenses(
        title: "Cinema",
        amount: 59.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expenses(
        title: "Pizza",
        amount: 39.99,
        date: DateTime.now(),
        category: Category.food),
    Expenses(
        title: "Gym",
        amount: 89.99,
        date: DateTime.now(),
        category: Category.travel),
    Expenses(
        title: "Kotlin course",
        amount: 39.99,
        date: DateTime.now(),
        category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(child: ExpensesList(expenses: _resgisteredExpenses)),
        ],
      ),
    );
  }
}
