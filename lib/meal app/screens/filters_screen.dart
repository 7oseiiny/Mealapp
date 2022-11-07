import 'package:flutter/material.dart';

import 'category_meals_screen.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  static bool _GlutenFree= false;
  static bool _Vegan= false;
  static bool _Vegetarian= false;
  static bool _LactoseFree= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            CategoryMealsScreen.GlutenFree=_GlutenFree;
            CategoryMealsScreen.Vegan=_Vegan;
            CategoryMealsScreen.Vegetarian=_Vegetarian;
            CategoryMealsScreen.LactoseFree=_LactoseFree;
          }, icon: Icon(Icons.save))
        ],
        title: Text("your filters"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
                child: Text(
              "adjust your meal selection",
              style: Theme.of(context).textTheme.subtitle1,
            )),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(_GlutenFree,(v) {setState(() {_GlutenFree =v;});}),
                buildSwitchListTile(_Vegan,(v) {setState(() {_Vegan =v;});}),
                buildSwitchListTile(_Vegetarian,(v) {setState(() {_Vegetarian =v;});}),
                buildSwitchListTile(_LactoseFree,(v) {setState(() {_LactoseFree =v;});}),

              ],
            ),
          )
        ],
      ),
    );
  }

  SwitchListTile buildSwitchListTile(bool value, ValueChanged function) {
    return SwitchListTile(
                  value: value,
                  onChanged: function,
                  title: Text("Gluten free"),
                  subtitle: Text("only include Gluten free"),
              );
  }
}
