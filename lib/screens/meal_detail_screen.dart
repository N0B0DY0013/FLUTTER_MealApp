import 'package:flutter/material.dart';

import '../dummy_data.dart';
// import '../models/meal.dart';

class MealDetailScreen extends StatefulWidget {
  final String mealId;

  const MealDetailScreen({
    super.key,
    required this.mealId,
  });

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  bool ingrExpanded = true;
  bool stepsExpanded = false;

  Widget listTitle(String txt, bool isExpanded) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isExpanded ? Colors.pink : Colors.black
        ),
      ),
    );
  }

  Widget listDetails(Widget list) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      padding: const EdgeInsets.all(10),
      child: list,
    );
  }

  ExpansionPanelRadio listPanels(
      bool expandFlag, String title, ListView listview) {
    return ExpansionPanelRadio(
      headerBuilder: (BuildContext ctx, bool isExpanded) {
        return listTitle(title, isExpanded);
      },
      body: listDetails(
        listview,
      ),
      value: title,
      canTapOnHeader: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) {
      return meal.id == widget.mealId;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              //margin: const EdgeInsets.only(bottom: 10),
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            ExpansionPanelList.radio(
              initialOpenPanelValue: "Ingredients",
              expandedHeaderPadding: const EdgeInsets.all(0),
              dividerColor: Colors.pink,
              expansionCallback: (int index, bool isExpanded) {
                //print({index, isExpanded});
                setState(() {
                  if (index == 0) {
                    ingrExpanded = !isExpanded;
                  } else {
                    stepsExpanded = !isExpanded;
                  }
                });
              },
              children: [
                listPanels(
                  ingrExpanded,
                  "Ingredients",
                  ListView.builder(
                      itemBuilder: (ctx, idx) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(selectedMeal.ingredients[idx]),
                          ),
                        );
                      },
                      itemCount: selectedMeal.ingredients.length),
                ),
                listPanels(
                  stepsExpanded,
                  "Steps",
                  ListView.builder(
                    itemBuilder: (ctx, idx) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              child: Text("${idx + 1}"),
                            ),
                            title: Text(selectedMeal.steps[idx]),
                          ),
                          const Divider(),
                        ],
                      );
                    },
                    itemCount: selectedMeal.steps.length,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
