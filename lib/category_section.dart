import 'package:flutter/material.dart';
import 'package:trivia_streak/category_model.dart';

import 'grid_view_element.dart';

class CategorySection extends StatelessWidget {
  CategorySection({
    Key? key,
  }) : super(key: key);
  final category = CategoryModel.category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    color: Color.fromRGBO(105, 89, 223, 1),
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView1(category:category),
            ),

        ],
      ),
    );
  }
}
