import 'package:flutter/cupertino.dart';

import 'models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expenses> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length, itemBuilder: (context, index) {
         return Text(expenses[index].title);
    });
  }
}
