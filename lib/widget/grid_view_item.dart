import 'package:flutter/material.dart';

import '../model/food_model.dart';
import 'meal_card.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
        itemCount: meals.length,
        itemBuilder: (context,index){
          return MealCard(img: meals[index].img,name: meals[index].name,price: meals[index].price,) ;
        },
         // clipBehavior: Clip.none,
    shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
      (crossAxisCount: 2,

        crossAxisSpacing: 10,
        mainAxisSpacing: 10
    ));
  }
}
