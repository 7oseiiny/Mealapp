import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../widgets/category_item.dart';
import 'category_meals_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((e) => CategoryItem(
                voidcallback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryMealsScreen(
                          id: e.id,
                          title: e.title,
                            )),
                  );
                },
                id: e.id,
                title: e.title,
                color: e.color,
              ))
          .toList(),
    );
  }
}
