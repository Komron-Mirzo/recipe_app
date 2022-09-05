import 'package:flutter/material.dart';
import 'package:recipe_app/recipe_card.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatefulWidget {
  const RecipeApp({Key? key, this.networkData}) : super(key: key);

  final dynamic networkData;

  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {

  late String recipeName;
  late String recipeImage;
  late List ingredientList;



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 25.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Center(
                          child: Text(
                        "What to eat?",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      )),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Search for recipe",
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                    child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (Buildcontext, int) => RecipeCard(
                    foodPic: '',
                    foodName: 'recipeName',
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
