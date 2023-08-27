import 'package:flutter/material.dart';

import '../screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  //final int matchingMealCount;
  // Function setMealFilter;
  // Map<String, bool> currentFilters;

  CategoryItem({
    super.key,
    required this.title,
    required this.color,
    required this.id,
    //required this.matchingMealCount,
    // required this.setMealFilter,
    // required this.currentFilters,
  });

  void showCategoryMeal(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          //print("CATEG_MEALLLLLLLL $currentFilters");

          return CategoryMealScreen(
            categoryTitle: title,
            id: id,
            // setMealFilter: setMealFilter,
            // currentFilters: currentFilters,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //print("CATEG_ITEMMMMMMMMMM $currentFilters");

    return InkWell(
      onTap: () {
        showCategoryMeal(context);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.grey,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
