import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import '../widgets/filter_selection.dart';

//import '../models/global.dart';

class FilterScreen extends StatelessWidget {
  
  const FilterScreen({
    super.key,
  });

  // final String viewAll = "View All";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food App"),
      ),
      drawer: MainDrawer(),
      // body: Column(
      //   children: [
      //     Container(
      //       padding: const EdgeInsets.all(20),
      //       child: Text(
      //         "Adjust your meal selection",
      //         style: Theme.of(context).textTheme.titleLarge,
      //       ),
      //     ),
      //     Expanded(
      //       child: ListView(
      //         children: [
      //           buildSwitchListTile(
      //             viewAll,
      //             "Include all meals",
      //             mealFilters["showAll"] as bool,
      //             (newValue) {
      //               setState(() {
      //                 mealFilters["showAll"] = newValue as bool;
      //                 if (newValue) {
      //                   mealFilters["gluten"] = false;
      //                   mealFilters["lactose"] = false;
      //                   mealFilters["vegan"] = false;
      //                   mealFilters["vegetarian"] = false;
      //                 }
      //               });
      //             },
      //           ),
      //           const Divider(),
      //           buildSwitchListTile(
      //             "Gluten-Free",
      //             "Only include gluten-free meals.",
      //             mealFilters["gluten"] as bool,
      //             (newValue) {
      //               setState(() {
      //                 mealFilters["gluten"] = newValue as bool;
      //               });
      //             },
      //           ),
      //           buildSwitchListTile(
      //             "Vegan",
      //             "Only include vegan meals.",
      //             mealFilters["vegan"] as bool,
      //             (newValue) {
      //               setState(() {
      //                 mealFilters["vegan"] = newValue;
      //               });
      //             },
      //           ),
      //           buildSwitchListTile(
      //             "Vegetarian",
      //             "Only include vegetarian meals.",
      //             mealFilters["vegetarian"] as bool,
      //             (newValue) {
      //               setState(() {
      //                 mealFilters["vegetarian"] = newValue;
      //               });
      //             },
      //           ),
      //           buildSwitchListTile(
      //             "Lactose-Free",
      //             "Only include lactose-free meals.",
      //             mealFilters["lactose"] as bool,
      //             (newValue) {
      //               setState(() {
      //                 mealFilters["lactose"] = newValue;
      //               });
      //             },
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      body: FilterSelection(),
    );
  }
}
