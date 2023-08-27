import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../widgets/no_items.dart';

import '../dummy_data.dart';

import '../models/global.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // print("categories screen run..............");

    final filteredCategory = DUMMY_CATEGORIES.where((catData) {
      int mealCount = DUMMY_MEALS
          .where((meal) {
            if (meal.categories.contains(catData.id) &&
                (mealFilters["showAll"] as bool ||
                    ((meal.isGlutenFree == (mealFilters["gluten"] as bool)) &&
                        (meal.isLactoseFree ==
                            (mealFilters["lactose"] as bool)) &&
                        (meal.isVegan == (mealFilters["vegan"] as bool)) &&
                        (meal.isVegeterian ==
                            (mealFilters["vegetarian"] as bool))))) {
              return true;
            }
            return false;
          })
          .toList()
          .length;

      if (mealCount > 0) {
        return true;
      } else {
        return false;
      }
    }).toList();

    return filteredCategory.isEmpty
        ? const NoItems(
            imageUrl:"https://media.istockphoto.com/id/1322785236/vector/a-cat-not-eating-food.jpg?s=170667a&w=0&k=20&c=y-VqO7xA0BBWzkNBPAhwJ94fd8s9EmlImXCEcfhqOSY=",
            description: "No meal available for the selected filter.",
          )
        
        // Center(
        //     child: Padding(
        //       padding: const EdgeInsets.fromLTRB(8, 150, 8, 8),
        //       child: Column(children: [
        //        const  Text("No meal available for the selected filter."),
        //         Image.network(
        //           "https://media.istockphoto.com/id/1322785236/vector/a-cat-not-eating-food.jpg?s=170667a&w=0&k=20&c=y-VqO7xA0BBWzkNBPAhwJ94fd8s9EmlImXCEcfhqOSY=",
        //           height: 350,
        //           width: 350,
        //         ),
        //       ]),
        //     ),
        //   )
        : GridView(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: filteredCategory.map((catData) {
              return CategoryItem(
                title: catData.title,
                color: catData.color,
                id: catData.id,
                //matchingMealCount: mealCount,
              );
            }).toList());
  }
}
