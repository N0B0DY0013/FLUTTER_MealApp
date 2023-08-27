//import 'dart:math';

import 'package:flutter/material.dart';

import '../models/global.dart';

typedef void categoriesCallBack(int hasFilterChange);

class FilterSelection extends StatefulWidget {

  categoriesCallBack? onFilterChange;

  FilterSelection({
    super.key,
    this.onFilterChange,
  });

  @override
  State<FilterSelection> createState() => _FilterSelectionState();
}

class _FilterSelectionState extends State<FilterSelection> {
  final String viewAll = "View All";

  Widget buildSwitchListTile(
    String title,
    String subTitle,
    bool currentValue,
    Function updatedValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(subTitle),
      onChanged: (title == viewAll ||
              (title != viewAll && (mealFilters["showAll"] as bool) == false))
          ? ((newValue) {
              updatedValue(newValue);
            })
          : null,
    );
  }

  void updateFilters(Map<String, Object> lists) {
    setState(() {
      mealFilters[lists['filter'] as String] = lists['filter_val'] as bool;

      if (lists['filter'] as String == "showAll" &&
          lists['filter_val'] as bool) {
        mealFilters["gluten"] = false;
        mealFilters["lactose"] = false;
        mealFilters["vegan"] = false;
        mealFilters["vegetarian"] = false;
      }

    if(widget.onFilterChange != null) {
      //widget.onFilterChange!(Random().nextInt(100));
      widget.onFilterChange!(1);
    }

      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Adjust your meal selection",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Container(
          height: 400,
          child: ListView(
            children: [
              buildSwitchListTile(
                viewAll,
                "Include all meals",
                mealFilters["showAll"] as bool,
                (newValue) {
                  // setState(() {
                  //   mealFilters["showAll"] = newValue as bool;
                  //   if (newValue) {
                  //     mealFilters["gluten"] = false;
                  //     mealFilters["lactose"] = false;
                  //     mealFilters["vegan"] = false;
                  //     mealFilters["vegetarian"] = false;
                  //   }
                  // });
                  updateFilters({
                    "filter": "showAll",
                    "filter_val": newValue,
                  });
                },
              ),
              const Divider(),
              buildSwitchListTile(
                "Gluten-Free",
                "Only include gluten-free meals.",
                mealFilters["gluten"] as bool,
                (newValue) {
                  // setState(() {
                  //   mealFilters["gluten"] = newValue as bool;
                  // });
                  updateFilters({
                    "filter": "gluten",
                    "filter_val": newValue,
                  });
                },
              ),
              buildSwitchListTile(
                "Vegan",
                "Only include vegan meals.",
                mealFilters["vegan"] as bool,
                (newValue) {
                  // setState(() {
                  //   mealFilters["vegan"] = newValue;
                  // });
                  updateFilters({
                    "filter": "vegan",
                    "filter_val": newValue,
                  });
                },
              ),
              buildSwitchListTile(
                "Vegetarian",
                "Only include vegetarian meals.",
                mealFilters["vegetarian"] as bool,
                (newValue) {
                  // setState(() {
                  //   mealFilters["vegetarian"] = newValue;
                  // });
                  updateFilters({
                    "filter": "vegetarian",
                    "filter_val": newValue,
                  });
                },
              ),
              buildSwitchListTile(
                "Lactose-Free",
                "Only include lactose-free meals.",
                mealFilters["lactose"] as bool,
                (newValue) {
                  // setState(() {
                  //   mealFilters["lactose"] = newValue;
                  // });
                  updateFilters({
                    "filter": "lactose",
                    "filter_val": newValue,
                  });
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
