import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
const  uuid =  Uuid();


 final formatter = DateFormat.yMd();
enum Category { food, travel, leisure, work }
//custom category values that we ll use
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.leisure: Icons.movie_creation_outlined,
  Category.travel : Icons.flight,
  Category.work : Icons.work

};

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

String get formattedDate {
return  formatter.format(date);
}

}