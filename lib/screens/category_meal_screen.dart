import 'package:flutter/material.dart';

import '../dummy_data.dart';

import '../widgets/meal_item.dart';

//import '../screens/filter_screen.dart';

import '../models/global.dart';

class CategoryMealScreen extends StatelessWidget {
  final String categoryTitle;
  final String id;
  
  const CategoryMealScreen({
    super.key,
    this.categoryTitle = "",
    this.id = "",
  });


  @override
  Widget build(BuildContext context) {

    final categoryMeals = DUMMY_MEALS.where((meal) {
      if (meal.categories.contains(id) &&
          (mealFilters["showAll"] as bool ||
              ((meal.isGlutenFree == (mealFilters["gluten"] as bool)) &&
                  (meal.isLactoseFree == (mealFilters["lactose"] as bool)) &&
                  (meal.isVegan == (mealFilters["vegan"] as bool)) &&
                  (meal.isVegeterian ==
                      (mealFilters["vegetarian"] as bool))))) {
        return true;
      } else {
        return false;
      }

    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, idx) {
            return MealItem(
                mealID: categoryMeals[idx].id,
                title: categoryMeals[idx].title,
                imageUrl: categoryMeals[idx].imageUrl,
                duration: categoryMeals[idx].duration,
                complexity: categoryMeals[idx].complexity,
                affordability: categoryMeals[idx].affordability,
                );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
