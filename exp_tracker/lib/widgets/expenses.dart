import 'package:exp_tracker/widgets/expense_list/expense_list.dart';
import 'package:flutter/material.dart';
import 'package:exp_tracker/Modals/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _dummyData = [
    Expense(
      title: 'Nike Shoes',
      amount: 3499.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Groceries',
      amount: 1500.00,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Train Ticket',
      amount: 500.00,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Office Supplies',
      amount: 2000.00,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Miscellaneous',
      amount: 1000.00,
      date: DateTime.now(),
      category: Category.other,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('chart'),
          Expanded(child: ExpenseList(expenses: _dummyData)),
        ],
      ),
    );
  }
}
