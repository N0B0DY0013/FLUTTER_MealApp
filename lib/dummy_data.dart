import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES =  [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

 const DUMMY_MEALS =  [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
      'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm11',
    categories: [
      'c1',
    ],
    title: 'Lasagne alla Bolognese',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.tasteatlas.com/Images/Dishes/2ca3fa0f83544a538f5b5ffd8f4da47f.jpg',
    duration: 150,
    ingredients: [
      '300 g (10 oz) of coarsely ground beef',
      '150 g (5 oz) of sliced pancetta (you can replace pancetta with minced pork)',
      '300 g (1 1⁄4 cup) of tomato passata or crashed peeled tomato',
      '1 small carrot (about 50 g)',
      '1 celery stalk (about 50 g)',
      '1 small onion (about 50 g)',
      '100 ml (1⁄2 cup) of dry white wine',
      '100 ml (1⁄2 cup) of whole milk',
      '300 ml (1 1⁄2 cup) of meat broth',
      '3 tablespoons of extra virgin olive oil',
      'fine salt',
      'freshly ground black pepper',
      '14 Lasagna',
      'Bèchamel Sauce'
    ],
    steps: [
      'Butter Baking Dish, Then Begin Layering Ragù and Pasta',
      'Layer on More Ragù, Pasta, Besciamella, and Cheese',
      'Repeat Until Baking Dish Is Full',
      'Finish With Besciamella and Cheese',
      'Bake the Lasagna',

    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c1',
    ],
    title: 'Buttermilk Alfredo Chicken Spinach Pasta',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.southernliving.com/thmb/pphys1AIderllm02fY8ARg_8rjc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/2626201_hihbu_21730-2000-03d842e9bdba40a5b158857b01d02192-38aa74c5d1384423a332b187bb8ebcf5.jpg',
    duration: 15,
    ingredients: [
      '8 ounces uncooked rigatoni pasta',
      '2 tablespoons unsalted butter',
      '1 1/2 cups whole milk',
      '1/2 cup whole buttermilk',
      '3/4 teaspoon kosher salt',
      '1/2 teaspoon black pepper',
      '4 ounces Parmesan cheese, finely shredded (about 1 1/2 cups), divided',
      '1 (5-oz.) pkg. fresh baby spinach',
      '4 cups shredded rotisserie chicken',
    ],
    steps: [
      'Cook pasta in a large pot of boiling salted water to cover according to package directions. Drain and set aside.',
      'Melt butter in a large skillet over medium. Whisk in flour until smooth. Cook, whisking constantly, 1 minute. Slowly whisk in milk. Cook, whisking constantly, until mixture is thickened and bubbly, 3 to 4 minutes. Remove from heat.',
      'Whisk buttermilk, salt, pepper, and 1 cup of the cheese into flour mixture, whisking until cheese is melted. Stir in spinach, 1 cup at a time, stirring until wilted before the next addition. Add chicken and pasta; stir until coated and warmed through. Sprinkle with remaining 1/2 cup cheese.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c1',
    ],
    title: 'Chicken Risotto with Spring Vegetables',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.southernliving.com/thmb/FyM6BSirEbMZJnlzYHXd3nWMdfM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/2052401_sprin021_1-2a06d1c9beb443aeb1563c82ed9ad9ff.jpg',
    duration: 70,
    ingredients: [
      '4 cups chicken broth',
      '1/2 pound fresh asparagus spears',
      '3/4 pound skinned and boned chicken breasts, cut into 1-inch strips',
      '1/2 teaspoon herbes de Provence',
      '1 1/4 teaspoons salt, divided',
      '3 tablespoons butter, divided',
      '2 tablespoons olive oil, divided',
      '2 medium zucchini, thinly sliced into half moons',
      '1 medium onion, finely chopped',
      '2 1/2 cups uncooked Arborio rice (short-grain)',
      '1 cup dry white wine',
      '1 cup freshly grated Parmesan cheese',
      '1/2 cup freshly grated fontina cheese',
      '1/4 cup chopped fresh parsley',
      '1/2 teaspoon pepper',
      'Garnish: Parmesan cheese'
      
    ],
    steps: [
      'Bring chicken broth and 4 cups water to a simmer in a large saucepan over low heat. Snap off and discard tough ends of asparagus. Cut into 2-inch pieces.',
      'Sprinkle chicken with herbes de Provence and 3/4 tsp. salt.',
      'Melt 2 Tbsp. butter with 1 Tbsp. olive oil in a Dutch oven over medium-high heat; add chicken, and sauté 5 to 6 minutes or until done. Remove chicken; cover and keep warm.',
      'Melt remaining 1 Tbsp. butter in Dutch oven; add zucchini, onion, and asparagus, and sauté 3 minutes or until tender. Remove vegetables; cover and keep warm.',
      'Sauté rice in remaining 1 Tbsp. hot oil in Dutch oven over medium-high heat 1 minute. Reduce heat to medium. Add wine and remaining 1/2 tsp. salt, and cook, stirring often, until liquid is absorbed. Add 1 cup hot broth mixture; cook, stirring often, until liquid is absorbed. Repeat procedure with remaining broth mixture, 1 cup at a time. (Total cooking time is about 30 minutes.)',
      'Stir in grated cheeses, chicken, and vegetables until creamy. Stir in parsley and pepper. Serve immediately.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c1',
    ],
    title: 'Beef Baked Ravioli',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.southernliving.com/thmb/iPcHDnELuDaz5OFVnSEX65Ic_gk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/2587801_qfssk_spinach_ravioli_6852_0_0_0_0_0-29ddf127a50c4d15a9d2e49bc5c7cb9b-31d882913f564260b746af2fa428c726.jpg',
    duration: 30,
    ingredients: [
      '1 pound 85% lean ground beef',
      '1 tablespoon olive oil',
      '1 medium-size red onion, thinly sliced (about 3 cups)',
      '2 tablespoons finely chopped garlic (from 3 medium garlic cloves)',
      '1 (28-oz.) can crushed tomatoes',
      '1 cup chicken stock',
      '1 teaspoon dried Italian seasoning',
      '1 teaspoon kosher salt',
      '1/4 teaspoon black pepper',
      '1 (20-oz.) pkg. refrigerated four-cheese ravioli (such as Buitoni)',
      '1 (5-oz.) pkg. baby spinach',
      '4 ounces pre-shredded low-moisture part-skim mozzarella (about 1 cup)',
      '2 ounces grated Parmesan cheese (about 1⁄2 cup)',
      '1/4 cup torn fresh basil leaves',
    ],
    steps: [
      'Preheat oven to broil with rack 9 inches from heat. Place a 12-inch cast-iron skillet on stove-top over medium-high. Add beef; cook, stirring often, until browned, 8 to 10 minutes. Remove beef; drain and set aside. Wipe skillet clean.',
      'Heat oil in skillet over medium-high; add onion, and cook, stirring occasionally, until tender, 8 to 10 minutes. Add garlic to skillet; cook, stirring constantly, until fragrant, about 1 minute. Stir in crushed tomatoes, stock, Italian seasoning, salt, pepper, and ravioli. Bring to a boil; reduce heat to medium. Cover and simmer until ravioli are tender, about 8 minutes. Uncover and return cooked beef to skillet. Stir in half of spinach, and cook just until wilted. Repeat with remaining spinach. Top with mozzarella and Parmesan.',
      'Broil in preheated oven until cheese is melted and golden, about 6 minutes. Remove from oven, and garnish with fresh basil.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c2',
    ],
    title: 'Air Fryer Scrambled Eggs On The Go',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.allrecipes.com/thmb/wxh1U6sYnU0WXrtS-zMJo8LnNXA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1666670216Air20Fryer20Scrambled20Eggs-690553babe2d4fca8c43b506305374d3.jpg',
    duration: 4,
    ingredients: [
      'cooking spray',
      '2 large eggs, beaten',
      'salt and freshly ground black pepper to taste',
    ],
    steps: [
      'Lightly spray a ramekin dish with non-stick cooking spray. Pour in beaten eggs.',
      'Set air fryer to 370 degrees F (185 degrees C) and place the ramekin into the air fryer basket.',
      'Air fry for 3 minutes. Stir egg mixture and cook for 3 minutes more. Fluff with a fork and season to taste with salt and pepper. Grab and go.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c3',
    ],
    title: 'Bacon-and-Kimchi Burgers',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.foodandwine.com/thmb/-zrIcG-CRkuhtrlFSUgHniRg51I=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/recipe0615-xl-bacon-and-kimchi-burgers-2000-a72b05469720482ba5aad9bab180e7ec.jpg',
    duration: 30,
    ingredients: [
      '1/4 cup sambal oelek (Indonesian chile sauce)',
      '1/4 cup mayonnaise',
      '1/4 cup ketchup',
      '4 slices of thick-cut bacon',
      '1 1/4 pounds ground beef chuck',
      'Kosher salt',
      '4 slices of American cheese',
      '4 potato buns, toasted',
      '1 cup chopped drained cabbage kimchi (6 ounces)'

    ],
    steps: [
      'In a small bowl, combine the sambal with the mayonnaise and ketchup and mix well.',
      'Light a grill or preheat a grill pan. Grill the bacon over moderate heat, turning, until golden and crisp, about 5 minutes total. Drain on paper towels.',
      'Form the beef into eight 1/4-inch-thick burgers and season with salt. Grill over high heat, turning, until browned, 1 minute per side. Make 4 stacks of 2 burgers each on the grill and spoon 1 tablespoon of the sambal mayo over each stack. Top with the cheese, cover and grill over high heat just until the cheese is melted, about 1 minute.',
      'Spread the remaining sambal mayo on the bottom buns. Top with the burgers, bacon and kimchi, close and serve.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

   Meal(
    id: 'm17',
    categories: [
      'c3',
    ],
    title: 'Fried Green Tomato Double Cheeseburgers',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.foodandwine.com/thmb/5cOZie1OFGBXyeDBQQIkVj406Gw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fried-green-tomato-double-cheeseburgers-XL-RECIPE0517_0-aa641fa8c63142809823eb71b0ca2cc8.jpg',
    duration: 60,
    ingredients: [
      '1/4 cup mayonnaise',
      '1 1/2 tablespoons Sriracha',
      '1/4 cup ketchup',
      '1/2 teaspoon Worcestershire sauce',
      '1/4 teaspoon garlic powder',
      '1/4 cup apple cider vinegar',
      '1 small garlic clove, finely grated',
      '1/2 celery rib, finely grated',
      '1 tablespoon toasted sesame seeds',
      '1 teaspoon sugar',
      '1 teaspoon Asian fish sauce',
      '1/2 teaspoon Dijon mustard',
      'Kosher salt',
      'Pepper',
      '1/2 pound iceberg lettuce, finely shredded (4 cups)',
      '1/2 cup all-purpose flour',
      '1 cup panko',
      '1/2 cup buttermilk',
      '1 large egg',
      '1/3 cup canola oil',
      '1 large unripe green tomato, cut into 4 thick slices',
      '1 1/2 pounds ground chuck, 20% fat',
      '8 slices of American cheese',
      '4 sesame seed buns, split and toasted'



    ],
    steps: [
      'Make the sauce In a small bowl, whisk together all of the ingredients until smooth.',
      'Make the slaw In a medium bowl, whisk the vinegar with the garlic, celery, sesame seeds, sugar, fish sauce and mustard. Season with salt and pepper. Just before serving, toss with the lettuce.',
      'Prepare the green tomato Spread the flour and panko in separate shallow bowls and season each with salt and pepper. In another shallow bowl, whisk the buttermilk and egg and season with salt and pepper. In a large nonstick skillet, heat the oil. Dredge the tomato slices in the flour, shaking off the excess. Dip in the buttermilk-egg mixture, then dredge in the panko. Fry the tomato slices over moderate heat, turning once, until golden and crisp, about 3 minutes. Transfer to a paper towel–lined plate to drain, then season with salt.',
      'Make the burgers Form the beef into eight 1/8-inch-thick patties and season with salt and pepper. In a large cast-iron skillet set on the grate of a preheated grill or on the stovetop, heat the oil. Working in 2 batches, cook the burgers over moderate heat until browned on the bottom, about 2 minutes. Flip, top each with a slice of cheese and cook, covered, until the burgers are browned and the cheese is melted, about 1 minute longer. Transfer to a work surface and repeat with the remaining 4 patties and cheese slices.',
      'Spread the sauce on the cut sides of the buns. Place a burger on each bottom bun. Top with a fried green tomato slice, another burger and the slaw. Close the burgers and serve.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm18',
    categories: [
      'c3',
    ],
    title: 'Japanese-Style Chili Burgers with Yuzu Mayo',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.foodandwine.com/thmb/h_oC7W8DwN9MaFBut-KbnMwhepE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/japanese-style-chili-burgers-with-yuzu-mayo-FT-RECIPE0620-2f8384135fc042e79cc256d17ad672f9.jpg',
    duration: 50,
    ingredients: [
      '1 cup Kewpie mayonnaise',
      '1/2 cup ketchup',
      '1 tablespoon bottled yuzu juice',
      '1 (28-ounce) can whole peeled tomatoes',
      '1 tablespoon olive oil',
      '4 pounds ground beef, divided',
      '1 cup finely diced yellow onion',
      '4 teaspoons kosher salt, divided',
      '1/4 cup tonkatsu sauce',
      '2 teaspoons gochugaru',
      '2 teaspoons turbinado sugar',
      '1 1/2 teaspoons ground coriander',
      '1 1/2 teaspoons ground cumin',
      '1/2 cup (4 ounces) sake',
      '1/4 cup cold water',
      '2 tablespoons all-purpose flour',
      '1 teaspoon smoked paprika',
      '1 1/2 teaspoons black pepper, divided',
      '8 sesame seed hamburger buns, buttered and toasted',
      '8 fresh tomato slices',
      '2 cups shredded iceberg lettuce'

    ],
    steps: [
      'Stir together Kewpie mayonnaise, ketchup, and yuzu juice in a bowl. Refrigerate until ready to serve. Process canned tomatoes in a food processor until smooth, about 1 minute. Set processed tomatoes aside.',
      'Heat oil in a small saucepan over medium-high. Add 1 pound ground beef, onion, and 2 teaspoons salt; cook, stirring occasionally, until meat is no longer pink and onion is lightly browned, about 7 minutes. Add processed tomatoes, tonkatsu, gochugaru, sugar, coriander, and cumin; stir in sake. Bring to a simmer. Stir together 1/4 cup cold water and flour in small bowl; add to ground beef mixture, and stir to combine. Stir in smoked paprika and 1/2 teaspoon black pepper. Reduce heat to medium-low, and return to a simmer. Cook, stirring often, 10 minutes. Remove from heat.',
      'Preheat grill or griddle to medium (350°F to 450°F). Gently stir together remaining 3 pounds ground beef, remaining 2 teaspoons salt, and remaining 1 teaspoon black pepper in a large bowl until just combined. Shape mixture into 8 (6-ounce) patties, pressing to 1/2-inch thickness. Place on oiled grates, and grill, covered, to desired degree of doneness, about 5 minutes per side for medium.',
      'Place patties on buns. Top each with 1/3 cup chili, 1 tomato slice, 1/4 cup lettuce, and 1 tablespoon mayonnaise mixture.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm19',
    categories: [
      'c3',
    ],
    title: 'Vietnamese-Style Banh Mi Burgers',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.foodandwine.com/thmb/_ycBr2nHLnKVCZKOx3kYdWhTcMs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/200911-xl-vietnamese-style-banh-mi-burgers-3bcd22a8033c47a18cad8aea9ad840ae.jpg',
    duration: 30,
    ingredients: [
      '2 carrots, coarsely shredded',
      '1/4 cup unseasoned rice vinegar',
      '1 tablespoon sugar',
      '1/2 cup mayonnaise',
      '2 tablespoons Tabasco',
      '2 teaspoons tomato paste',
      '1 garlic clove, minced',
      'Kosher salt and freshly ground pepper',
      '1 1/2 pounds ground beef chuck',
      '1 1/2 teaspoons curry powder',
      '2 tablespoons vegetable oil',
      '2 tablespoons unsalted butter, softened',
      'One 24-inch baguette, quartered crosswise and split',
      '2 pickled jalapeños, thinly sliced',
      '12 cilantro sprigs'
      

    ],
    steps: [
      'Preheat the oven to 400°. In a small bowl, toss the carrots with the rice vinegar and sugar and let stand for 10 minutes; drain.',
      'In a small bowl, whisk the mayonnaise with the Tabasco, tomato paste and garlic and season with salt and pepper.',
      'Form the meat into four 6-inch-long oval patties, about 1 inch thick. Season with the curry powder and salt and pepper. In a large skillet, heat the oil until shimmering. Cook the patties over moderate heat, turning once, until medium, about 12 minutes.',
      'Meanwhile, spread the butter on the cut sides of the baguette. Set the bread cut side up on a baking sheet and bake for about 5 minutes, until lightly toasted. Spread the Tabasco-spiked mayonnaise on the bread and top each baguette section with a burger patty, pickled shredded carrots, pickled jalapeño slices and cilantro sprigs. Close the sandwiches and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm20',
    categories: [
      'c4',
    ],
    title: 'Apfelkuchen',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.allrecipes.com/thmb/byfcHIQR0J-9FbTEUDbMKqniIxE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/2133917-apfelkuchen-apple-cake-Sherry-4x3-1-52a20ab60e6840fe96ae8ef9a4379839.jpg',
    duration: 85,
    ingredients: [
      '2 ¼ cups sifted all-purpose flour',
      '1 ⅛ cups warm milk',
      '¼ cup white sugar',
      '1 (.25 ounce) package active dry yeast',
      '6 tablespoons butter, softened',
      '1 tablespoon vanilla extract',
      '1 pinch salt',
      '3 large apples - peeled, cored, and sliced',
      '1 cup white sugar',
      '¾ cup sifted all-purpose flour',
      '2 ounces candied lemon peel, chopped (Optional)',
      '½ teaspoon ground cinnamon',
      '¼ teaspoon ground nutmeg',
      '1 pinch salt',
      '½ cup butter'
    ],
    steps: [
      'Grease the bottom and sides of a 9x13-inch baking dish or a 9-inch springform pan.',
      'Beat 2 1/4 cup flour, milk, 1/4 cup sugar, yeast, 6 tablespoons butter, vanilla extract, and 1 pinch salt in a large bowl with an electric mixer on high until dough is smooth, about 5 minutes; spread into baking dish and press dough up the sides. Press apple slices into dough.',
      'Mix 1 cup sugar, 3/4 cup flour, candied lemon peel, cinnamon, nutmeg, and 1 pinch salt in a bowl. Cut in 1/2 cup butter with a knife or pastry blender until mixture resembles coarse crumbs; sprinkle over apples. Allow dough to rise for 30 minutes.',
      'Preheat oven to 400 degrees F (200 degrees C).'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm21',
    categories: [
      'c4',
    ],
    title: 'Bienenstich',
    affordability: Affordability.Pricey,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.allrecipes.com/thmb/1KqpTghWD-2EJPVrpthRSa6AXYc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3894148-f2b05b1897e34a7eb8e8a8e61adce903.jpg',
    duration: 120,
    ingredients: [
      '1 ⅝ cups all-purpose flour',
      '1 tablespoon active dry yeast',
      '2 tablespoons white sugar',
      '1 pinch salt',
      '¾ cup lukewarm milk',
      '3 tablespoons butter',
      '3 tablespoons butter',
      '1 ½ tablespoons confectioners\' sugar',
      '1 tablespoon milk',
      '⅝ cup sliced almonds',
      '1 tablespoon honey (Optional)',
      '1 ½ cups milk',
      '⅓ cup cornstarch',
      '1 tablespoon white sugar',
      '1 egg, beaten',
      '1 teaspoon almond extract',
      '1 cup heavy whipping cream',
      '½ tablespoon cream of tartar',
    ],
    steps: [
      'Combine flour, yeast, 2 tablespoons sugar, salt, 3/4 cup milk, and 3 tablespoons butter in a large bowl. Turn dough out onto a lightly floured surface. Knead until smooth and elastic, about 15 to 20 minutes. Place in a well-greased bowl; cover and let rise in a warm place for 1 hour, or until doubled.',
      'Punch down dough. Roll out to a 1/2-inch thickness. Spread into a greased 8-inch square baking pan. Cover and let rise for 30 minutes.',
      'Melt 3 tablespoons butter and confectioners\' sugar in a saucepan. Add almonds and 1 tablespoon milk. Remove from heat, and stir in honey. Spread evenly and carefully onto dough. Allow dough to rise for an additional 30 minutes. Meanwhile, preheat the oven to 400 degrees F (200 degrees C).',
      'Bake in the preheated oven for 20 to 25 minutes, or until crust turns golden brown. Cool completely on a wire rack.'
      'Dissolve cornstarch in a little milk. Combine 1 1/2 cups milk, cornstarch, and 1 tablespoon sugar in the top of a double boiler. Heat while stirring until thickened, about 2 to 3 minutes. Add in beaten egg, and keep stirring for about 2 more minutes, or until thick. Remove from heat and stir in extract. Chill, covered, in the refrigerator for at least 1 hour. Beat whipping cream with cream of tartar until stiff. Fold into chilled pudding.',
      'Cut cooled almond bread into 1 1/4x2-inch rectangles; slice each one horizontally into halves. Fill with pudding mixture. Chill, and serve cold.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm22',
    categories: [
      'c4',
    ],
    title: 'Traditional Sauerbraten',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.allrecipes.com/thmb/p-dHLaIxDwuSU0TpqALsVmEKflA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/221361-traditional-sauerbraten-beauty-4x3-BP-2925-a1b153f8bdfd4e4b840d5c802d3e16a3.jpg',
    duration: 240,
    ingredients: [
      '3 pounds beef rump roast',
      '2 large onions, chopped',
      '1 cup red wine vinegar, or to taste',
      '1 cup water',
      '1 tablespoon salt',
      '1 tablespoon ground black pepper',
      '1 tablespoon white sugar',
      '10 whole cloves, or more to taste',
      '2 bay leaves, or more to taste',
      '2 tablespoons all-purpose flour',
      'salt and ground black pepper to taste',
      '2 tablespoons vegetable oil',
      '10 gingersnap cookies, crumbled',
    ],
    steps: [
      'Place beef rump roast, onions, vinegar, water, 1 tablespoon salt, 1 tablespoon black pepper, sugar, cloves, and bay leaves in a large pot. Cover and refrigerate for 2 to 3 days, turning meat daily. Remove meat from marinade and pat dry with paper towels, reserving marinade.',
      'Season flour to taste with salt and black pepper in a large bowl. Sprinkle flour mixture over beef.',
      'Heat vegetable oil in a large Dutch oven or pot over medium heat; cook beef until brown on all sides, about 10 minutes.',
      'Pour reserved marinade over beef, cover, and reduce heat to medium-low. Simmer until beef is tender, 3 1/2 to 4 hours.',
      'Remove beef to a platter and slice.',
      'Strain solids from remaining liquid and continue cooking over medium heat. Add gingersnap cookies and simmer until gravy is thickened, about 10 minutes. Serve gravy over sliced beef.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm23',
    categories: [
      'c4',
    ],
    title: 'Beer Glazed Brats and Sauerkraut',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.allrecipes.com/thmb/IgjJ0SVq3DP6dLP8L1RjSCG58ws=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/876299-beer-glazed-brats-and-sauerkraut-lutzflcat-4x3-1-ad5b558798074b518a3fec25a4a40ceb.jpg',
    duration: 50,
    ingredients: [
      '⅛ teaspoon celery seeds',
      '⅛ teaspoon caraway seeds',
      '1 pound fresh bratwurst sausages',
      '1 (12 fluid ounce) can or bottle lager beer',
      '1 tablespoon light brown sugar',
      '2 teaspoons dry mustard powder',
      '1 teaspoon onion powder',
      '⅛ teaspoon ground black pepper',
      '⅛ teaspoon dried dill weed',
      '1 pound sauerkraut (preferably barrel-aged), drained',
    ],
    steps: [
      'Crush celery seeds and caraway seeds in a mortar and pestle until ground; set aside.',
      'Place bratwursts into a large nonstick skillet over medium heat. Mix beer, brown sugar, dry mustard, onion powder, black pepper, dill weed, and crushed celery and caraway seeds in a bowl, stirring to dissolve brown sugar; pour over the brats. Bring to a boil and reduce heat to low; cover and simmer for 10 minutes.',
      'Uncover and raise heat to medium; boil the sauce until it reduces to a thick, syrupy liquid, about 20 minutes. Tilt skillet to roll brats in the sticky sauce until thoroughly coated. Transfer sausage to a platter and keep warm. Cook and stir sauerkraut in the same skillet to mix in any leftover sauce, 5 to 8 minutes. Transfer sauerkraut to a serving platter and top with cooked bratwurst.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm24',
    categories: [
      'c5',
      'c8'
    ],
    title: 'Pad Krapow Gai',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://gypsyplate.com/wp-content/uploads/2021/03/pad-krapow-gai_01-768x1152.jpg',
    duration: 15,
    ingredients: [
      'Ground Chicken',
      'Garlic',
      'Sauces',
      'Chilis',
      'Basil',
      'Eggs',
    ],
    steps: [
      'First, make a rough paste of your chilis and garlic.',
      'Get you wok nice and hot, add oil, toss in your garlicky chili mixture and stir about 20 seconds',
      'Add in your chicken and stir continuously for 6-8 minutes, until the chicken is fully cooked. Add your sugar and sauces, stir until thoroughly mixed.',
      'Then finally add your star, the basil and fold it into the chicken.',
      'Cook eggs. Add about 1/4 inch of cooking oil to a frying pan and get it nice and hot. Then drop your eggs in and cook until they are nice and crispy around the edges.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm25',
    categories: [
      'c5',
    ],
    title: 'Fluffy Key Lime Pie',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Fluffy-Key-Lime-Pie_EXPS_DSBZ17_36450_D01_13_6b-7.jpg?fit=700,1024',
    duration: 140,
    ingredients: [
      '1/4 cup boiling water',
      '1 package (0.3 ounce) sugar-free lime gelatin',
      '2 cartons (6 ounces each) Key lime yogurt',
      '1 carton (8 ounces) frozen fat-free whipped topping, thawed',
      '1 reduced-fat graham cracker crust (9 inches)',
    ],
    steps: [
      'In a large bowl, add boiling water to gelatin; stir 2 minutes to completely dissolve. Whisk in yogurt. Fold in whipped topping. Pour into crust.',
      'Refrigerate, covered, until set, about 2 hours.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm26',
    categories: [
      'c5',
      'c10'
    ],
    title: 'Meringue Shells with Lemon Curd',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps119206_THCA153054C11_25_2b-11.jpg?fit=700,1024',
    duration: 70,
    ingredients: [
      '6 large egg whites',
      '1 teaspoon white vinegar',
      '1 teaspoon vanilla extract',
      '1/4 teaspoon salt',
      '1/4 teaspoon cream of tartar',
      '1-1/2 cups sugar',
      '1/2 cup sugar',
      '2 tablespoons potato starch',
      '1 cup water',
      '1/2 cup plus 1 tablespoon lemon juice, divided',
      '3 large eggs, beaten',
      '2 teaspoons grated lemon zest',
      'Whipped topping and fresh berries, optional'

    ],
    steps: [
      'Place egg whites in a large bowl; let stand at room temperature 30 minutes.',
      'Preheat oven to 225°. Add vinegar, vanilla, salt and cream of tartar to egg whites; beat on medium speed until foamy. Gradually add sugar, 1 tablespoon at a time, beating on high after each addition until sugar is dissolved. Continue beating until stiff glossy peaks form.',
      'Cut a small hole in the tip of a pastry bag or in a corner of a food-safe plastic bag; insert a large star tip. Transfer meringue to bag. On a parchment-lined baking sheet, pipe meringue into twelve 3-in. round disks, building up the sides with meringue to form shells. Bake 45-50 minutes or until set and dry. Turn off oven (do not open door); leave meringues in oven 1 hour. Remove from oven; cool completely on baking sheet.',
      'Meanwhile, in a small heavy saucepan, mix sugar and potato starch. Whisk in water and 1/2 cup lemon juice until smooth. Cook and stir over medium-high heat until thickened and bubbly. Reduce heat to low; cook and stir 2 minutes longer.',
      'Remove from heat. Stir a small amount of hot mixture into eggs; return all to pan, stirring constantly. Bring to a gentle boil; cook and stir 2 minutes. Remove from heat. Gently stir in lemon zest and remaining lemon juice. Transfer to a small bowl; cool without stirring. Refrigerate, covered, until cold.',
      'Spoon curd into meringue shells. If desired, top with whipped topping and berries.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm27',
    categories: [
      'c5',
    ],
    title: 'Makeover Fruit Pizza',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Makeover-Fruit-Pizza_EXPS_DSBZ17_31841_B01_19_1b-9.jpg?fit=700,1024',
    duration: 120,
    ingredients: [
      '1 cup all-purpose flour',
      '1/4 cup confectioners\' sugar',
      '1/2 cup cold butter, cubed',
      '5 teaspoons cornstarch',
      '1-1/4 cups unsweetened pineapple juice',
      '1 teaspoon lemon juice',
      '1 package (8 ounces) reduced-fat cream cheese',
      '1/3 cup sugar',
      '1 teaspoon vanilla extract',
      '2 cups halved fresh strawberries',
      '1 cup fresh blueberries',
      '1 can (11 ounces) mandarin oranges, drained'


    ],
    steps: [
      'Preheat oven to 350°. In a large bowl, mix flour and confectioners\' sugar; cut in butter until crumbly. Press onto an ungreased 12-in. pizza pan. Bake until very lightly browned, 10-12 minutes. Cool completely on a wire rack.',
      'In a small saucepan, mix glaze ingredients until smooth; bring to a boil. Cook and stir until thickened, about 2 minutes. Cool slightly.',
      'In a bowl, beat cream cheese, sugar and vanilla until smooth. Spread over crust. Top with berries and mandarin oranges. Drizzle with glaze. Refrigerate until cold.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm28',
    categories: [
      'c6',
      'c8'
    ],
    title: 'Pork Sisig',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://api.lifegetsbetter.ph/uploads/recipes/featured/Red-Sisig.jpg',
    duration: 60,
    ingredients: [
      '1 lb. pig ears',
      '1 1/2 lb pork belly',
      '1 piece onion minced',
      '3 tablespoons soy sauce',
      '1/4 teaspoon ground black pepper',
      '1 knob ginger minced (optional)',
      '3 tablespoons chili flakes',
      '1/2 teaspoon garlic powder',
      '1 piece lemon or 3 to 5 pieces calamansi',
      '½ cup butter or margarine',
      '¼ lb chicken liver',
      '6 cups water',
      '3 tablespoons mayonnaise',
      '1/2 teaspoon salt',
      '1 piece egg (optional)'
    ],
    steps: [
      'Pour the water in a pan and bring to a boil Add salt and pepper.',
      'Put-in the pig’s ears and pork belly then simmer for 40 minutes to 1 hour (or until tender).',
      'Remove the boiled ingredients from the pot then drain excess water',
      'Grill the boiled pig ears and pork belly until done',
      'Chop the pig ears and pork belly into fine pieces',
      'In a wide pan, melt the butter or margarine. Add the onions. Cook until onions are soft.',
      'Put-in the ginger and cook for 2 minutes',
      'Add the chicken liver. Crush the chicken liver while cooking it in the pan.',
      'Add the chopped pig ears and pork belly. Cook for 10 to 12 minutes',
      'Put-in the soy sauce, garlic powder, and chili. Mix well',
      'Add salt and pepper to taste',
      'Put-in the mayonnaise and mix with the other ingredients',
      'Transfer to a serving plate. Top with chopped green onions and raw egg.',
      'Serve hot. Share and Enjoy (add the lemon or calamansi before eating)'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm29',
    categories: [
      'c6',
      'c8'
    ],
    title: 'Soup #5',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://i0.wp.com/www.angsarap.net/wp-content/uploads/2020/09/Soup-Number-5-Wide.jpg?fit=1080%2C720&ssl=1',
    duration: 240,
    ingredients: [
      '2 lbs. Ox bat and balls',
      '2 bunches lemongrass',
      '1 set sibot herb mix',
      '3 pieces Thai chili pepper optional',
      '3 tablespoons green onion chopped',
      '3 thumbs ginger julienne',
      '2 pieces onions sliced',
      '8 cloves garlic crushed and chopped',
      '12 cups water',
      '2 cups beef broth',
      '2 teaspoons cornstarch',
      '2 teaspoons granulated white sugar',
      '1/8 teaspoon ground black pepper',
      '3 tablespoons fish sauce patis',
      '3 tablespoons cooking oil'

    ],
    steps: [
      'Boil 6 cups water in a cooking pot.',
      'Put Ox bat and balls. Continue to boil for 15 to 20 minutes. Remove from the cooking pot and wash with running water. Discard the water.',
      'Pour 6 cups water in a cooking pot. Let boil. Add sibot herb mix and lemongrass. Cook for 5 minutes.',
      'Add bat and balls into the pot. Continue to cook for 3 to 4 hours or until tender. Note: you can use a pressure cooker to tenderize it quickly. Add water as needed.',
      'Remove the meat from the pot. Let it cool down and then slice into smaller pieces. Filter the liquid using a kitchen sieve to separate the solid ingredients. Set aside.',
      'Heat oil in a cooking pot. Saute garlic, onion, and ginger until garlic browns and onion softens.',
      'Add the sliced bat and balls and chopped Thai chili. Saute for 2 minutes.',
      'Pour the filtered liquid and add beef broth. Let boil. Cook for 20 minutes.',
      'Season with fish sauce and ground black pepper and add sugar. Cook for 5 minutes more.',
      'Make the soup thicker by pouring a mixture composed of cornstarch and water. Stir.',
      'Transfer to a serving bowl. Serve.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm30',
    categories: [
      'c6',
      'c8'
    ],
    title: 'Chana Masala',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.allrecipes.com/thmb/VBfIEg33woGzNjn7TZYVU8jXld8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/236564-chana-masala-savory-indian-chick-peas-3x4-672-copy-63ae3db5114644419c313cd0e479c9dd.jpg',
    duration: 30,
    ingredients: [
      '1 onion, chopped',
      '1 tomato, chopped',
      '1 (1 inch) piece fresh ginger, peeled and chopped',
      '4 cloves garlic, chopped, or more to taste',
      '1 green chile pepper, seeded and chopped (Optional)',
      '3 tablespoons olive oil',
      '2 fresh bay leaves',
      '1 teaspoon chili powder',
      '1 teaspoon coriander powder',
      '1 teaspoon garam masala',
      '½ teaspoon turmeric powder',
      '1 pinch salt to taste',
      'water as needed',
      '1 (15 ounce) can chickpeas',
      '1 teaspoon fresh cilantro leaves, for garnish, or more to taste',


    ],
    steps: [
      'Grind onion, tomato, ginger, garlic, and chile pepper together in a food processor into a paste.',
      'Heat olive oil in a large skillet over medium heat. Fry bay leaves in hot oil until fragrant, about 30 seconds. Pour the paste into the skillet and cook until the oil begins to separate from the mixture and is golden brown in color, 2 to 3 minutes. Season the mixture with chili powder, coriander, gram masala, turmeric, and salt; cook and stir until very hot, 2 to 3 minutes.',
      'Stir enough water into the mixture to get a thick gravy; bring to a boil and stir chickpeas into the gravy. Reduce heat to medium and cook until the chickpeas are heated through, 5 to 7 minutes. Garnish with cilantro.',

    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm31',
    categories: [
      'c6',
      'c8'
    ],
    title: 'Miso Soup',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.gimmesomeoven.com/wp-content/uploads/2016/01/Miso-Soup-Recipe-9.jpg',
    duration: 15,
    ingredients: [
      '4 cups water',
      '2 teaspoons dashi granules',
      '3 tablespoons miso paste',
      '1 (8 ounce) package silken tofu, diced',
      '2 green onions, sliced diagonally into 1/2 inch pieces'
    ],
    steps: [
      'Combine water and dashi granules in a medium saucepan over medium-high heat; bring to a boil. Reduce heat to medium and whisk in miso paste. Stir in tofu. Separate the layers of green onions, and add them to the soup. Simmer gently for 2 to 3 minutes before serving.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm32',
    categories: [
      'c7',
    ],
    title: 'Corned Beef Hash and Eggs',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Corned-Beef-Hash-and-Eggs_EXPS_DIYDAP22_5360_DR_01_19_2b.jpg?resize=768,768',
    duration: 15,
    ingredients: [
      '1 package (32 ounces) frozen cubed hash browns',
      '1-1/2 cups chopped onion',
      '1/2 cup canola oil',
      '4 to 5 cups chopped cooked corned beef',
      '1/2 teaspoon salt',
      '8 large eggs',
      'Salt and pepper to taste',
      '2 tablespoons minced fresh parsley'
    ],
    steps: [
      'In a large ovenproof skillet, cook hash browns and onion in oil until tender and potatoes are browned. Remove from the heat; stir in corned beef and salt.',
      'Make 8 wells in the hash browns. Break 1 egg into each well. Sprinkle with salt and pepper. Cover and bake at 325° until eggs reach desired doneness, 20-25 minutes. Garnish with parsley.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm33',
    categories: [
      'c7',
    ],
    title: 'Overnight Oats',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.acouplecooks.com/wp-content/uploads/2020/11/Overnight-Oats-021.jpg',
    duration: 15,
    ingredients: [
      '½ cup old fashioned rolled oats',
      '½ cup milk, any milk will work, but I like unsweetened almond milk',
      '¼ cup plain yogurt or ¼ cup more milk, I like using Greek yogurt',
      '1-2 teaspoons maple syrup or honey, or your preferred sweetener',
      '1 teaspoon chia seeds, optional',
      '½ teaspoon vanilla extract, optional',
      'pinch of sea salt',
      'toppings of choice: fruit, nut butter, nuts, seeds, etc.'  
    ],
    steps: [
      'Add oats, milk, yogurt, maple syrup, chia seeds, vanilla and sea salt into a jar or storage container with a lid. Stir ingredients together. Place in the fridge overnight. If you’re in a rush you can shorten the soak time to 2-4 hours.',
      'The next morning (or when ready to eat), remove lid and give oats a big stir. If they seem too thick you can add a little more milk to loosen the mixture. Top with your favorite toppings and enjoy. You can eat the oats straight from the jar or pour into a bowl for serving.',
      'Overnight oats should last up to 5 days in the fridge in a sealed airtight container.'
      
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm33',
    categories: [
      'c7',
    ],
    title: 'Sheepherder’s Breakfast',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Sheepherder-s-Breakfast_EXPS_GHBZ18_983_B08_15_4b-3.jpg?resize=768,768',
    duration: 120,
    ingredients: [
      '3/4 pound bacon strips, finely chopped',
      '1 medium onion, chopped',
      '1 package (30 ounces) frozen shredded hash brown potatoes, thawed',
      '8 large eggs',
      '1/2 teaspoon salt',
      '1/4 teaspoon pepper',
      '1 cup shredded cheddar cheese',
    ],
    steps: [
      'In a large skillet, cook bacon and onion over medium heat until bacon is crisp. Drain, reserving 1/4 cup drippings in pan.',
      'Stir in hash browns. Cook, uncovered, over medium heat until bottom is golden brown, about 10 minutes. Turn potatoes. With the back of a spoon, make 8 evenly spaced wells in potato mixture. Break 1 egg into each well. Sprinkle with salt and pepper.',
      'Cook, covered, on low until eggs are set and potatoes are tender, about 10 minutes. Sprinkle with cheese; let stand until cheese is melted.'
      
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm34',
    categories: [
      'c7',
    ],
    title: 'Early-Riser Oven Omelet',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Early-Riser-Oven-Omelet_EXPS_CISMZ20_22661_E12_17_2b-13.jpg?resize=768,768',
    duration: 40,
    ingredients: [
      '10 large egg whites',
      '5 large eggs',
      '1 cup fat-free milk',
      '1/4 teaspoon seasoned salt',
      '1/4 teaspoon pepper',
      '1-1/2 cups cubed fully cooked ham',
      '1 cup chopped fresh broccoli',
      '1 cup shredded reduced-fat cheddar cheese',
      '1 medium tomato, seeded and chopped',
      '3 tablespoons finely chopped onion'

    ],
    steps: [
      'In a bowl, beat the egg whites, eggs, milk, seasoned salt and pepper. Pour into a greased 10-in. cast-iron or other ovenproof skillet. Sprinkle with the ham, broccoli, cheese, tomato and onion. Bake, uncovered, at 350° until eggs are almost set, 30-35 minutes. Broil 4-6 in. from the heat until the eggs are set and top is lightly browned, 1-2 minutes.'
      
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm35',
    categories: [
      'c9',
    ],
    title: 'Gruyère Cheese Soufflé',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.foodandwine.com/thmb/VxIYQ3z8EqySs-lZEy2ULAqIYD4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/HD-201401-r-gruyere-cheese-souffle-2809553fedda41a69c901d7fa7608286.jpg',
    duration: 60,
    ingredients: [
      '3 tablespoons unsalted butter, plus more for greasing',
      '2 tablespoons freshly grated Parmigiano-Reggiano cheese',
      '3 1/2 tablespoons all-purpose flour',
      '1 cup cold whole milk',
      '5 large eggs, separated',
      '1/2 teaspoon kosher salt',
      '1/2 teaspoon freshly ground pepper',
      '3 ounces Gruyère cheese, shredded (1 cup)',
      '2 tablespoons chopped chives',
      '2 slices of yellow American cheese, each cut into 6 strips'

    ],
    steps: [
      'Preheat the oven to 400°. Grease a 1-quart gratin dish with butter and dust with the Parmigiano; refrigerate. In a saucepan, melt the 3 tablespoons of butter over moderate heat. Whisk in the flour and cook, whisking, for 1 minute. Whisk in the milk, bring to a boil and cook, whisking, until thickened, 1 minute. Remove the béchamel from the heat, then whisk in 4 egg yolks along with the salt and pepper; reserve the remaining yolk for another use.',
      'In a clean bowl, beat the whites until firm peaks form. Whisk one-third of the whites into the béchamel, then fold in the remaining beaten whites. Fold in the Gruyère and chives; scrape into the prepared dish. Arrange the American cheese strips on top in a crisscross pattern. Bake for 25 minutes, until puffed and golden. Serve.'
      
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm36',
    categories: [
      'c9',
    ],
    title: 'Hot Niçoise Salad',
    affordability: Affordability.Pricey,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.foodandwine.com/thmb/bPdaPW54B14Fb7Upkvt2lwiEh_s=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/201104-HD-hot-nicoise-salad-094d96d207e2424181064571ff4fbc7d.jpg',
    duration: 45,
    ingredients: [
      '1/2 pound green beans',
      '1 cup grape tomatoes, halved',
      '1/2 cup pitted Niçoise olives (3 ounces)',
      '1 cup roasted red or yellow bell peppers, cut into strips',
      'Two 2-ounce cans flat anchovies packed in olive oil, drained and chopped',
      '1/2 cup torn basil leaves',
      '1/2 cup plus 2 tablespoons extra-virgin olive oil',
      'Salt and freshly ground pepper',
      'Four 6-ounce, 1-inch-thick tuna steaks',
      '4 large eggs',
      '2 tablespoons fresh lemon juice'

    ],
    steps: [
      'Preheat the oven to 400°. Put the beans in a steamer basket and steam over 1 inch of boiling water until crisp-tender, 4 minutes; transfer to a large roasting pan',
      'Lightly squeeze the tomatoes and add to the pan. Add the olives, bell pepper, anchovies and basil, toss with 1/4 cup of the olive oil and season with salt and pepper. Brush the tuna steaks with 1 tablespoon of the olive oil and season with salt and pepper. Set the tuna on the vegetables. Nestle 4 ramekins among the vegetables and crack an egg into each ramekin. Drizzle the eggs with 1 tablespoon of the oil and season with salt and pepper',
      'Roast the tuna, vegetables and eggs in the center of the oven for 15 minutes, until the fish is slightly rare in the center and the egg whites are set, but the yolks are still runny.',
      'Meanwhile, in a small bowl, whisk the remaining 1/4 cup of oil with the lemon juice and season with salt and pepper. Drizzle the dressing over the vegetables and tuna steaks. Transfer to plates and serve immediately.'
      
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegeterian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm37',
    categories: [
      'c9',
    ],
    title: 'Camembert Baked in the Box',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.foodandwine.com/thmb/4Rig41xkfVHSu95cgu094RgpoK4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/201504-xl-camembert-baked-in-the-box-2000-969aae71faa4400db76951f95c0a5b22.jpg',
    duration: 20,
    ingredients: [
      'One 8-ounce wheel of Camembert, unwrapped',
      'Crackers and apple slices, for serving',

    ],
    steps: [
      'Preheat the oven to 375°. Set the box of cheese in a baking dish and bake, uncovered, until just melted, about 15 minutes. Slice off the top rind and serve immediately with crackers and apple slices.'
      
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm38',
    categories: [
      'c9',
    ],
    title: 'Chicken Chasseur',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.foodandwine.com/thmb/CTJBDdU7ozQBGmBhN8WxlPhv-ew=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/201307-xl-chicken-chasseur-9273de23454f4b6a8c81f55b82651b3e.jpg',
    duration: 40,
    ingredients: [
      '1 tablespoon cooking oil',
      '4 bone-in chicken breasts (about 2 1/4 pounds in all)',
      '1 teaspoon kosher salt, divided',
      '1/2 teaspoon freshly ground black pepper, divided',
      '1 tablespoon butter',
      '1 onion, chopped',
      '3/4 pound mushrooms, sliced',
      '2 cloves garlic, minced',
      '1 1/2 teaspoons flour',
      '6 tablespoons dry vermouth or dry white wine',
      '2/3 cup canned low-sodium chicken broth or homemade stock',
      '1 cup canned crushed tomatoes, drained',
      '1/4 teaspoon dried thyme',
      '2 tablespoons chopped fresh parsley'

    ],
    steps: [
      'In a large, deep frying pan, heat the oil over moderately high heat. Season the chicken with 1/4 teaspoon each of the salt and pepper and add to the pan. Cook until browned, turning, about 8 minutes in all. Remove. Pour off all but 1 tablespoon fat from the pan.',
      'Add the butter to the pan and reduce the heat to moderately low. Add the onion and cook, stirring occasionally, until translucent, about 5 minutes. Raise the heat to moderately high. Add the mushrooms, garlic, and 1/4 teaspoon of the salt. Cook, stirring frequently, until the vegetables are browned, about 5 minutes.',
      'Add the flour and cook, stirring, for 30 seconds. Stir in the vermouth and bring back to a simmer. Stir in the broth, tomatoes, thyme, and the remaining 1/2 teaspoon salt. Add the chicken and any accumulated juices. Reduce the heat; simmer, covered, until the chicken is done, about 10 minutes. Stir in the parsley and the remaining 1/4 teaspoon pepper.'
      
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm39',
    categories: [
      'c10',
    ],
    title: 'Halo-Halo',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.thespruceeats.com/thmb/bqq_P7YZtu4Br9kPHqVkjib1QhQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/halo-halo-5409582-step-08-18bca395e05542539cf4eb2e87fd6882.jpg',
    duration: 10,
    ingredients: [
      '2 cups of shaved ice',
      '1 ripe large banana',
      '1 ripe large banana',
      '1/2 cup sweet corn or chickpeas (garbanzos)',
      '2 cups evaporated milk',
      '1 cup firm gelatin set into a gel and cut into 1/2 inch cubes',
      '2 ripe mangoes',
      '1 cup ripe jackfruit',
      '1 cup cooked sweet yams or (ube halaya)',
      '4 scoops of favorite ice cream',
      '1/2 cup rice pop'

    ],
    steps: [
      'Peel mangoes and slice into half-inch cubes.',
      'Divide each ingredient into 4 equal parts. Get 4 tall glasses, then place each ingredients layer by layer.',
      'Put the one-half cup of shaved ice to each glass.',
      'Pour a quarter of milk evap over shaved ice to each glass.',
      'Put a scoop of ice cream on top',
      'Drizzle some nuts or rice crispies on top of the ice cream'
      
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegeterian: false,
    isLactoseFree: false,
  )

];
