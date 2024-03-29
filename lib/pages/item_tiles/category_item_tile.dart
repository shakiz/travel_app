import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category.dart';

class CategoryItemTile extends StatelessWidget {
  Category category;
  CategoryItemTile(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 20, bottom: 20, top: 10),
      decoration: BoxDecoration(
        color: category.BackColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 10,
            color: category.BackColor.withOpacity(.5),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Image.asset(category.CategoryIcon, height: 30, width: 30, color: Colors.white,),
          const SizedBox(height: 8),
          Text(category.CategoryName, style: const TextStyle(color: Colors.white, fontSize: 16),),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
