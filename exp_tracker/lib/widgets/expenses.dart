import 'package:exp_tracker/widgets/expense_list/expense_list.dart';
import 'package:exp_tracker/widgets/new_expense.dart';
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

  void _openModalSheet() {
    showModalBottomSheet(
      // this context is the context of the Expenses widget.
      // The location in the tree where this widget builds.
      // this context contains meta data about the current widget.
      // used to locate where in the widget tree the bottom sheet should be displayed.
      context: context,
      // this ctx is for the modal sheet.
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        backgroundColor: const Color(0xFF3B82F6),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: _openModalSheet, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Text('chart'),
          Expanded(child: ExpenseList(expenses: _dummyData)),
        ],
      ),
    );
  }
}
