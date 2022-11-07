import 'package:flutter/material.dart';
import 'package:untitled/meal%20app/screens/category_meals_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
         child: Column(
           children: [
             Container(
               height: 70,
               alignment: Alignment.centerLeft,
               decoration: BoxDecoration(
                 color: Theme.of(context).accentColor,

               ),
               child: Text("   Cooking Up!",style: TextStyle(fontSize: 30,fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold)),
             ),
             SizedBox(height: 20,),
             ListTile(
               onTap: (){Navigator.of(context).pushReplacementNamed("/");},
               leading: Icon(Icons.restaurant),
               title: Text("Meal",style: TextStyle(fontSize: 24,fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold)),
             ),
             ListTile(
               onTap: (){Navigator.pushNamed(context, 'filters');},
               leading: Icon(Icons.settings),
               title: Text("filters",style: TextStyle(fontSize: 24,fontFamily: 'RobotoCondensed',fontWeight: FontWeight.bold)),
             ),
           ],
         ),
      ),
    );
  }
}
