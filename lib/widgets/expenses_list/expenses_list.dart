
import 'package:flutter/cupertino.dart';

import '../../models/expense.dart';
import 'expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.removeExpenses});

  final List<Expenses> expenses;
  final Function(Expenses expenses) removeExpenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return Dismissible(
          behavior: HitTestBehavior.translucent,
          onDismissed: (item){
            removeExpenses(expenses[index]);
          },
          onUpdate: (item ){
            print(item.progress);
          },
          key: ValueKey(
            expenses[index],
          ),
          child: ExpensesItem(
            expenses: expenses[index],
          ),
        );
      },
    );
  }
}
