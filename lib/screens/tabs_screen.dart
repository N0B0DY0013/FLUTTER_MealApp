import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorites_screen.dart';
//import './filter_screen.dart';

import '../widgets/main_drawer.dart';
import '../widgets/filter_selection.dart';

//import '../models/global.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  // final List<Widget> _screens = [
  //   CategoriesScreen(setMealFilter: () {},),
  //   const FavoritesScreen(),
  // ];

  int _selectedScreenIdx = 0;

  //bool isGluten = false;
  // bool isVegan = false;
  // bool isVegeterian = false;
  // bool isLactoseFree = false;
  // int filterChange = 0;
  int filterChange = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIdx = index;
    });
  }

  void updateFilters(int hasFilterChange) {
    setState(() {
      print("updateFilters...............");
      filterChange = hasFilterChange;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("TABBBBBBBBB .............");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Food App"),
        //leading: const Icon(Icons.filter),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 10, 8),
            child: InkWell(
              onTap: () {
                //print("filtered");
                showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return AlertDialog(
                        scrollable: true,
                        contentPadding: const EdgeInsets.all(0),
                        content: Container(
                          //padding: EdgeInsets.all(8),
                          height: MediaQuery.of(ctx).size.height * 0.6,
                          width: MediaQuery.of(ctx).size.width,
                          child: FilterSelection(
                            onFilterChange: (int hasFilterChange) {
                              updateFilters(hasFilterChange);
                            },
                          ),
                        ),
                      );
                    });
              },
              child: const Icon(
                Icons.filter_alt,
                size: 26,
              ),
            ),
          ),
        ],
      ),

      drawer: MainDrawer(),
    
      body: _selectedScreenIdx == 0
          ?   CategoriesScreen(key: UniqueKey(),):
             const FavoritesScreen(),

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        currentIndex: _selectedScreenIdx,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[400],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorite",
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
