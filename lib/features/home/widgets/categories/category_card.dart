import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomCenter,
      width: 253,
      height: 168,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        image: DecorationImage(
          image: ResizeImage(AssetImage(category.imagePath), width: 506),
          fit: BoxFit.cover,
        ),
      ),

      child: Text(
        category.name,
        textAlign: TextAlign.center,
        style: TextStyle(
          shadows: [
            Shadow(
              offset: const Offset(0, 2),
              blurRadius: 6,
              color: Colors.black.withValues(alpha: 0.85),
            ),
            Shadow(
              offset: const Offset(0, 10),
              blurRadius: 36,
              color: Colors.black.withValues(alpha: 0.60),
            ),
          ],
          color: AppColors.primaryText,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.315,
          height: 26 / 20,
        ),
      ),
    );
  }
}
