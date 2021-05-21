import 'package:flutter/material.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';

import './screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals!',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.lime,
        canvasColor: Color.fromRGBO(
          255,
          254,
          229,
          1,
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(
                  20,
                  51,
                  51,
                  1,
                ),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(
                  20,
                  51,
                  51,
                  1,
                ),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,  
              ),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
