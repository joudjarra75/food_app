import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget dataForCodeOrder(int num , String txt){
    return Column(
      children: [
        Text('$num',style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontSize: 30
        ),),
        Text(txt,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
        ),)
      ],
    );
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('assets/images/profile-icon.jpg',
            ),)
          ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          dataForCodeOrder(30, 'Orders'),
          dataForCodeOrder(3, 'Codes'),
          ],
        )

      ],
    );
  }
}
