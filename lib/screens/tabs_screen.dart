import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/screens/categories-screen.dart';
import 'package:meals/screens/favorite_screen.dart';

import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> _favoriteMeals;

  const TabsScreen(this._favoriteMeals, {super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  /// Map de widgets da BottomNavigationBar
  late final List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Lista de Categorias',
        'screen': const CategoriesScreen(),
      },
      {
        'title': 'Meus favoritos',
        'screen': FavoriteScreen(widget._favoriteMeals),
      },
    ];
  }

  /// Método para escutar a mudança de estado da BottomNavigationBar
  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_screens[_selectedScreenIndex]['title'].toString()),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        // Configura as cores e qual aba está selecionada de acordo com o _selectedScreenIndex
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        // Animação de elevação do ícone ao trocar de um para o outro
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.category),
              label: 'Categorias'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.star),
              label: 'Favoritos'),
        ],
      ),
    );
  }
}
