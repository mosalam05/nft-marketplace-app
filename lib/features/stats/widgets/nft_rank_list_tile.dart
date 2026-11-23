import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nft_marketplace/core/models/nft_model.dart';

class NftRankListTile extends StatelessWidget {
  final NftModel nft;
  final int rank;
  const new({super.key, required this.nft, required this.rank});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        nft.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: AppColors.primaryText,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.368,
          height: 19 / 16,
        ),
      ),
      subtitle: Text(
        'view info',
        style: const TextStyle(
          color: AppColors.secondaryText,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.059,
          height: 12 / 12,
        ),
      ),
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 20,
            child: Text(
              rank.toString(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.216,
                height: 18 / 14,
                /*
                text-align: center;
               */
              ),
            ),
          ),

          const SizedBox(width: 8),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(9),
            child: Image.asset(
              nft.imagePath,
              width: 44,
              height: 44,
              cacheWidth: 90,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (nft.price != null)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const FaIcon(
                  FontAwesomeIcons.ethereum,
                  size: 16,
                  color: AppColors.priceIcon,
                ),

                const SizedBox(width: 5),

                Text(
                  nft.price.toString(),
                  style: const TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.216,
                    height: 18 / 14,
                  ),
                ),
              ],
            ),

          if (nft.percentage != null) ...[
            const SizedBox(height: 5),
            Text(
              '${nft.percentage! > 0 ? '+' : ''}${nft.percentage!}%',
              style: TextStyle(
                color: nft.percentage! >= 0.0 ? AppColors.green : AppColors.red,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.059,
                height: 12 / 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
