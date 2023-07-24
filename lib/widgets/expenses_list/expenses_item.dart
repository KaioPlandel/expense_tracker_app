import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expenses});

  final Expenses expenses;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expenses.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text("\$${expenses.amount.toStringAsFixed(2)}"),
                // 15.1254 => 15.12
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expenses.category]),
                    const SizedBox(width: 8),
                    Text(expenses.formattedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
