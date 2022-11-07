import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/favorite_screen.dart';
import 'widgets/main_drawer.dart';

class Meal_App extends StatefulWidget {

   Meal_App({Key? key}) ;

  @override
  State<Meal_App> createState() => _Meal_AppState();
}

class _Meal_AppState extends State<Meal_App> {
  int selected_screen =0;
  final List screens =[CategoriesScreen(),FavoriteScreen()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: screens[selected_screen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          selected_screen=index;
          setState(() {});
        },
        currentIndex: selected_screen,
        selectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label:"favorite"),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
