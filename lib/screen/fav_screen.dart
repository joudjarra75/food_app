import 'package:flutter/material.dart';
import 'package:food_app/model/food_model.dart';
import 'package:food_app/widget/fav_card.dart';

class FavScreen extends StatelessWidget {

 const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child:ListView.builder(
        itemCount: meals.length,
          itemBuilder: (context,index) {
        return FavCard(foodModel: meals[index]);
      })
      // SingleChildScrollView(
      //   child: Column(
      //     children:  meals.map((i) => FavCard(foodModel: i ) ).toList()
      //   ),
      // )
    );
  }
}
