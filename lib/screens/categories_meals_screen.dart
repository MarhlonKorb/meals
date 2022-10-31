import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/dummy-data.dart';
import 'package:meals/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Forma de mapear um objeto/informação para utilizá-lo(a) em outras partes do sistema
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
          itemBuilder: ((context, index) =>
              MealItem(categoryMeals[index]))),
    );
  }
}
