import 'package:flutter/material.dart';
import 'package:meals/screens/categories-screen.dart';
import 'package:meals/screens/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos cozinhar?'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          const CategoriesScreen(),
          FavoriteScreen()
        ]),
      ),
    );
  }
}
