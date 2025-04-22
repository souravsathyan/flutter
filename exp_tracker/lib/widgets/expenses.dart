import 'package:exp_tracker/widgets/chart/chart.dart';
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
  final List<Expense> _dummyData = [];

  void _openModalSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      // this context is the context of the Expenses widget.
      // The location in the tree where this widget builds.
      // this context contains meta data about the current widget.
      // used to locate where in the widget tree the bottom sheet should be displayed.
      context: context,
      // this ctx is for the modal sheet.
      builder: (ctx) => NewExpense(onSubmit: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _dummyData.add(expense);
    });
  }

  void removeExpense(Expense expense) {
    final expenseIndex = _dummyData.indexOf(expense);
    setState(() {
      _dummyData.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense Deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _dummyData.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    Widget mainContent = Center(
      child: Text('No data available. Please add some'),
    );

    if (_dummyData.isNotEmpty) {
      mainContent = ExpenseList(
        expenses: _dummyData,
        removeExpense: removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: _openModalSheet, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [Chart(expenses: _dummyData), Expanded(child: mainContent)],
      ),
    );
  }
}
