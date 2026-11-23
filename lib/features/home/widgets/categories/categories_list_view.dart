import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/features/home/widgets/categories/category_card.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories;
  const CategoriesListView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CategoryCard(category: categories[index]),
        separatorBuilder: (context, index) => SizedBox(width: 9),
        itemCount: categories.length,
      ),
    );
  }
}
