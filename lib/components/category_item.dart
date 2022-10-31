import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {super.key});

/// Método responsável por direcionar a seleção de escolha do usuario para a página CategoriesMealsScreen 
  void _selectCategory(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (_){
    //   return CategoriesMealsScreen(category);
    // }));

// Trabalhando com rotas nomeadas utilizando método pushNamed()
    Navigator.of(context).pushNamed(
      '/categories-meals',
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
