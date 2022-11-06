import 'package:flutter/cupertino.dart';
import 'package:meals/components/meal_item.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(
        child: Text(
          'Nenhuma Refeição foi marcada como Favorita'
        ),
      );
    } else{
      return ListView.builder(itemCount: favoriteMeals.length ,
      itemBuilder: (context, index) {
        return MealItem(favoriteMeals[index]);
      },);
    }
    
  }
}
