import 'package:flutter/material.dart';

import 'package:meal_app/models/global.dart';
import 'package:meal_app/widgets/no_items.dart';

import '../widgets/meal_item.dart';
//import '../widgets/category_item.dart';

import '../dummy_data.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int favoriteCount = 0;
  List favoriteMeals = [];

  void updateFavoriteCount(int newCount) {
    setState(() {
      favoriteCount = newCount;
    });
    print(favoriteCount);
  }

  @override
  Widget build(BuildContext context) {
    print("favorites screen run..............");

    favoriteMeals = DUMMY_MEALS.where((meal) {
      if (favorites.contains(meal.id)) {
        return true;
      }
      return false;
    }).toList();

    return favoriteMeals.isNotEmpty //|| favoriteCount > 0
        ? ListView.builder(
            itemBuilder: (ctx, idx) {
              return MealItem(
                mealID: favoriteMeals[idx].id,
                title: favoriteMeals[idx].title,
                imageUrl: favoriteMeals[idx].imageUrl,
                duration: favoriteMeals[idx].duration,
                complexity: favoriteMeals[idx].complexity,
                affordability: favoriteMeals[idx].affordability,
                onFavoriteChange: (int newCount) {
                  updateFavoriteCount(newCount);
                },
              );
            },
            itemCount: favoriteMeals.length,
          )
        : const NoItems(
            imageUrl:"https://media.istockphoto.com/id/1322785236/vector/a-cat-not-eating-food.jpg?s=170667a&w=0&k=20&c=y-VqO7xA0BBWzkNBPAhwJ94fd8s9EmlImXCEcfhqOSY=",
            description: "There are no favorites added.",
          );
    // Center(
    //     child: Padding(
    //       padding: const EdgeInsets.fromLTRB(8, 150, 8, 8),
    //       child: Column(
    //         children: [
    //           const Text("There are no favorites added."),
    //           Image.network(
    //             "https://media.istockphoto.com/id/1322785236/vector/a-cat-not-eating-food.jpg?s=170667a&w=0&k=20&c=y-VqO7xA0BBWzkNBPAhwJ94fd8s9EmlImXCEcfhqOSY=",
    //             height: 350,
    //             width: 350,
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
