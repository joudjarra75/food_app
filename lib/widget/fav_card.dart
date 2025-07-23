import 'package:flutter/material.dart';
import 'package:food_app/model/food_model.dart';

class FavCard extends StatelessWidget {
  FoodModel foodModel;
   FavCard({super.key,required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Image.network(foodModel.img, height: 120),
            SizedBox(width: 20),
            Column(
              children: [
                Text(
                  foodModel.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "${foodModel.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.favorite, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
