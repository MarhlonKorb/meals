import 'package:flutter/material.dart';
import 'package:meals/screens/categories-screen.dart';
import 'package:meals/screens/categories_meals_screen.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254,229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          )
        )
      ),
      home: const CategoriesScreen(),
      routes: {
        '/categories-meals' : ((context) => CategoriesMealsScreen())
      },
    );
  }
}

