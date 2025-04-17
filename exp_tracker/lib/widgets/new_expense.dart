import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final TextEditingController textController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  void _openDatePicker() {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: textController,
            maxLength: 50,
            decoration: InputDecoration(label: const Text('Title')),
            keyboardType: TextInputType.text,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: const Text('Amount'),
                    prefixText: '\₹ ',
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Select Date'),
                    IconButton(
                      onPressed: _openDatePicker,
                      icon: Icon(Icons.calendar_today),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  print(textController.text);
                  print(amountController.text);
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
