import 'package:expense_tracker/models/expense_mod.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  /*var _enteredTitle = '';

  void _saveTitleInput(String inputValue){
    _enteredTitle = inputValue;
  }*/

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;

  void _presentDatePicker() async{
    final now = DateTime.now();
    final first = DateTime(now.year - 1, now.month, now.day); // today last year
    final pickedDate = await showDatePicker(context: context, initialDate: now,firstDate:first, lastDate: now);

    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 40,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '₹ ',
                    label: Text('Amount'),
                  ),
                ),
              ),
              const SizedBox(width: 16,),
              Expanded(child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 Text(_selectedDate == null ? 'No date selected': formatter.format(_selectedDate!)),
                IconButton(onPressed: _presentDatePicker, icon: const Icon(Icons.calendar_month),),
              ],),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  // print(_enteredTitle);
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('Save Expense'),
              )
            ],
          )
        ],
      ),
    );
  }
}
