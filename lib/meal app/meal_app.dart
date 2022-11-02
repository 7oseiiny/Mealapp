import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';

class Meal_App extends StatelessWidget {
  const Meal_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: CategoriesScreen(),
    );
  }
}
