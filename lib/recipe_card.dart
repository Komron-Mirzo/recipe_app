import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, required this.foodPic, required this.foodName}) : super(key: key);
  final String foodPic;
  final String foodName;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Image.network(foodPic),
            SizedBox(height: 10.0,),
            Text(foodName, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600,),),
          ],
        ),
      ),
    );
  }
}
