import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String? id;
  final String? title;
  CategoryMealsScreen({this.title, required this.id, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final category_meal = DUMMY_MEALS.where((element) {
      return element.categories!.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("${title}"),
      ),
      body: MealItem(data: category_meal,));
  }
}
