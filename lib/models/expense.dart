import 'package:uuid/uuid.dart';

const  uuid =  Uuid();

enum Category { food, travel, leisure, work }
//custom category values that we ll use

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
}) : id= uuid.v4();
  final String id;
  final DateTime date;
  final String title;
  final double amount;
  final Category category;



}