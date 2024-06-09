import 'package:expense/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({
    super.key
  });

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {

  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 15.5,
      date: DateTime.now(),
      category: Category.work,
    ),

    Expense(
      title: 'Cinema',
      amount: 300,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const Text('the chart'),
          Expanded(
              child: ExpensesList(
                  expenses:_registeredExpenses
              ),
          )
        ],
      ),
    );
  }
}