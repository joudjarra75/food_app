import 'package:flutter/material.dart';
class MealCard extends StatelessWidget {
  String img;
  String name;
  double price;
   MealCard({required this.img,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child:  Column(children:[
        Image.network(img,
        height: 90,
            width: 100,),
        SizedBox(height: 10,),
        Expanded(
          child: Text(
             maxLines: 1,
            overflow: TextOverflow.ellipsis,
            name,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
        SizedBox(height: 10,),
        Text(r"$ " "$price",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange
        ),)


      ]),

    );


  }
}
