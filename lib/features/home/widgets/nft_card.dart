import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/core/models/nft_model.dart';

class NftCard extends StatelessWidget {
  final NftModel model;
  const NftCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 14),
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        color: Colors.white.withValues(alpha: 0.15),
        border: BoxBorder.all(
          width: 0.9,
          color: Colors.white.withValues(alpha: 0.5),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              model.imagePath,
              width: 145,
              height: 140,
              fit: BoxFit.cover,
              cacheWidth: 300,
            ),
          ),

          const SizedBox(height: 9),

          Text(
            model.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryText,
              height: 18 / 16,
            ),
          ),

          const SizedBox(height: 2),

          Text(
            model.collectionTag ?? '#unknown',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryText,
              height: 18 / 16,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              if (model.price != null) ...[
                FaIcon(
                  FontAwesomeIcons.ethereum,
                  size: 16,
                  color: AppColors.priceIcon,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    '${model.price}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryText,
                    ),
                  ),
                ),
              ] else
                const Spacer(),

              Icon(
                model.isLiked ? Icons.favorite : Icons.favorite_border,
                color: model.isLiked ? AppColors.red : AppColors.secondaryText,
                size: 16,
              ),

              const SizedBox(width: 3),

              Text(
                '${model.likesCount}',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
