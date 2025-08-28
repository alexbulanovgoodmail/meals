import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';

import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        children: <Widget>[
          for (var category in availableCategories)
            CategoryGridItem(category: category)
        ],
      ),
    );
  }
}
