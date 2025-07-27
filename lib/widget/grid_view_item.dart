import 'package:flutter/material.dart';

import '../model/food_model.dart';

class GridViewItem extends StatefulWidget {
  int indexItem;
  GridViewItem({super.key, required this.indexItem});

  @override
  State<GridViewItem> createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network(
                meals[widget.indexItem].img,
                height: 90,
                width: 100,
              ),
              Positioned(
                top: 10,
                right: -20,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      meals[widget.indexItem] = meals[widget.indexItem]
                          .copyWith(isFav: !(meals[widget.indexItem].isFav));
                      // print(meals[widget.indexItem].isFav);
                    });
                  },
                  child: meals[widget.indexItem].isFav
                      ? Icon(Icons.favorite,color: Colors.deepOrange,)
                      : Icon(Icons.favorite_border),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              meals[widget.indexItem].name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Text(
            r"$ "
            "${meals[widget.indexItem].price}",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
