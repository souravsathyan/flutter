import 'package:exp_tracker/Modals/expense.dart';
import 'package:exp_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
    required this.removeExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) removeExpense;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (ctxt, index) => Dismissible(
            key: ValueKey(expenses[index]),
            onDismissed: (direction) => removeExpense(expenses[index]),
            background: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Theme.of(context).cardTheme.margin!.horizontal,
              ),
              color: Theme.of(context).colorScheme.error.withAlpha(128),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: ExpenseItem(expense: expenses[index]),
          ),
    );
  }
}
