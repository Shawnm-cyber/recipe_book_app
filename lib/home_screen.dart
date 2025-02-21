import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'name': 'Pancakes', 'ingredients': 'Flour, Eggs, Milk, Sugar', 'instructions': 'Mix and cook on a pan.'},
    {'name': 'Spaghetti', 'ingredients': 'Pasta, Tomato Sauce, Garlic', 'instructions': 'Boil pasta and mix with sauce.'},
    {'name': 'Salad', 'ingredients': 'Lettuce, Tomato, Cucumber, Dressing', 'instructions': 'Chop and mix all ingredients.'},
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            elevation: 5,
            color: Colors.teal[50],
            child: ListTile(
              leading: Icon(Icons.restaurant_menu, color: Colors.deepOrange),
              title: Text(
                recipes[index]['name']!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}