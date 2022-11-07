import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {

   static bool? GlutenFree=false;
   static bool? Vegan=false;
   static  bool? Vegetarian=false;
   static bool? LactoseFree=false;

  final String? id;
  final String? title;
  CategoryMealsScreen({this.title, this.id, Key? key});
  @override
  Widget build(BuildContext context) {
    final category_meal = DUMMY_MEALS.where((element) {
      if (GlutenFree ==true && element.isGlutenFree==false){return false;}
      if (Vegan ==true && element.isVegan==false){return false;}
      if (Vegetarian ==true && element.isVegetarian==false){return false;}
      if (LactoseFree ==true && element.isLactoseFree==false){return false;}
      else  return element.categories!.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(onTap: (){print(Vegan);},child: Text("${title}")),
      ),
      body: MealItem(data: category_meal,));
  }
}
