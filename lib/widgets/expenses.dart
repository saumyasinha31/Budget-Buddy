import 'package:expense/widgets/expenses_list/expenses_list.dart';
import 'package:expense/widgets/new_expense.dart';
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
 void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense(),
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Budget Buddy'),
        actions: [
          IconButton( icon: Icon(Icons.add),
          onPressed: _openAddExpenseOverlay,)
        ],
      ),
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