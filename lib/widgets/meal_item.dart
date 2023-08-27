import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../models/global.dart';

import '../screens/meal_detail_screen.dart';

typedef void favoriteCallBack(int id);

class MealItem extends StatefulWidget {
  final String mealID;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  favoriteCallBack? onFavoriteChange;

   MealItem({
    super.key,
    required this.mealID,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
    this.onFavoriteChange,

  });

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  String get complexityText {
    switch (widget.complexity) {
      case Complexity.Simple:
        return "Simple";
        break;
      case Complexity.Challenging:
        return "Challenging";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "Unknown";
        break;
    }
  }

  String get affordabilityText {
    switch (widget.affordability) {
      case Affordability.Affordable:
        return "Affordable";
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
      case Affordability.Luxurious:
        return "Expensive";
        break;
      default:
        return "Unknown";
        break;
    }
  }

  void showMealDetail(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) {
        return MealDetailScreen(
          mealId: widget.mealID,
        );
      }),
    );
  }

  void addToFavorites() {
    setState(() {
      if (favorites.contains(widget.mealID) == false) {
          //favorites.push(mealID);
          favorites.add(widget.mealID);
      } else {
          favorites.remove(widget.mealID);
      }

      if(widget.onFavoriteChange != null) {
        widget.onFavoriteChange!(favorites.length);
      }
    });
    
    //print(favorites.length);
  }

  Icon toggleFavoriteButton() {
    return Icon(
      favorites.contains(widget.mealID)
          ? Icons.favorite
          : Icons.favorite_border_outlined,
      color: favorites.contains(widget.mealID)
          ? Colors.pink.withAlpha(200)
          : Colors.white.withAlpha(200),
      size: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showMealDetail(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.all(10),
                    //alignment: Alignment.,
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 0,
                  child: FloatingActionButton(
                    heroTag: widget.mealID,
                    onPressed: () {
                      addToFavorites();
                      //print(favorites.length);
                    },
                    backgroundColor: Color.fromARGB(0, 255, 255, 255),
                    elevation: 0,
                    child: toggleFavoriteButton(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('${widget.duration} min')
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(affordabilityText)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
