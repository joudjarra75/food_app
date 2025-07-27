import 'package:flutter/material.dart';
import 'package:food_app/model/food_model.dart';
import 'package:food_app/widget/fav_card.dart';

class FavScreen extends StatefulWidget {

  FavScreen({super.key,});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    List<FoodModel> favItem = meals.where((e) => e.isFav == true).toList();
    return Padding(
      padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: favItem.length,
          itemBuilder: (context,index){
            return  Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Image.network(favItem[index].img, height: 120),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          favItem[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "${favItem[index].price}",
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
                        child: InkWell(
                          onTap: (){
                          setState(() {
                      FoodModel goalItem = favItem[index]; //food model
                           int goalIndex =  meals.indexOf(goalItem);
                         meals[goalIndex] = meals[goalIndex].copyWith(isFav: false);
                         favItem.remove(goalItem);
                          });
                          },
                            child: Icon(Icons.favorite, color: Colors.deepOrange)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },

        ),

    );
  }
}
