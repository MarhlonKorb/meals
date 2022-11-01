import 'package:flutter/material.dart';
import 'package:meals/screens/categories-screen.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail-screen.dart';

import 'utils/app_routes.dart';

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
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),
      routes: {
        AppRoutes.HOME: (context) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (context) => const MealDetailScreen(),
      },


      
// // Melhor aplicação caso a rota acessada não exista
//       onUnknownRoute: ((settings) {
//         return MaterialPageRoute(builder: (_) {
//           return const CategoriesScreen();
//         });
//       }),

//       // Método utilizado para gerenciar rotas dinâmicas
//       onGenerateRoute: ((settings) {
//         if (settings =='/alguma-coisa') {
//           return null;
//         } else if(settings =='/outra-coisa'){
// return null;
//         } else {
//           return MaterialPageRoute(builder: (_) {
//             return CategoriesScreen();
//           });
//         }
//       }),
    );
  }
}
