import 'package:exp_tracker/Modals/expense.dart';
import 'package:exp_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctxt, index) => ExpenseItem(expense: expenses[index]),
    );
  }
}
