import 'package:flutter/material.dart';

import '../screens/tabs_screen.dart';
import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {

  // Function setMealFilter;
  // Map<String, bool> currentFilters;

  MainDrawer({
    super.key,
    // required this.setMealFilter,
    // required this.currentFilters,
  });

  void showTabScreen(BuildContext ctx) {
    Navigator.pushReplacement(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          return const TabScreen();
        },
      ),
    );
  }

  void showFilterScreen(BuildContext ctx) {
    Navigator.pushReplacement(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          return const FilterScreen();
        },
      ),
    );
  }

  Widget buildListStyle(String txt, IconData icon, Function fx) {
    return ListTile(
      splashColor: Colors.pink[50],
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        txt,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        fx();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.pink[50],
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: const Text(
              "Secret Nav",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          buildListStyle(
            "Meals",
            Icons.restaurant,
            () {
              showTabScreen(context);
            },
          ),
          const SizedBox(
            height: 5,
          ),
          buildListStyle(
            "Filter",
            Icons.settings,
            () {
              showFilterScreen(context);
            },
          ),
        ],
      ),
    );
  }

  
}
