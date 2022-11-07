import 'package:flutter/material.dart';
import 'package:untitled/meal%20app/meal_app.dart';
import 'package:untitled/meal%20app/screens/filters_screen.dart';
import 'package:untitled/quiz%20app/app.dart';
import 'package:untitled/try.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 255, 229, 1),
          textTheme: ThemeData.light() .textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 50, 50, 1),
            ), // TextStyle
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 50, 50, 1),
            ), // TextStyle
            subtitle1: TextStyle(
              fontSize: 24,
              fontFamily: 'RobotoCondensed',
            ), // TextStyle
          )
      ), // ThemeData
      // home: Meal_App(),
      routes: {
        '/':(context) => Meal_App(),
        'filters':(context)=>FiltersScreen()
      },
      // home: tryi(),
    );
  }
}
