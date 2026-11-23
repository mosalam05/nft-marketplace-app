import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/features/stats/data/stats_dummy_data.dart';
import 'package:nft_marketplace/features/stats/widgets/filter_row.dart';
import 'package:nft_marketplace/features/stats/widgets/nft_rank_list_view.dart';

class RankingView extends StatelessWidget {
  const RankingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: FilterRow(),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: AppColors.rankingContainer,
                borderRadius: BorderRadius.circular(18),
                border: BoxBorder.all(
                  color: AppColors.rankingContainerBorder,
                  width: 1.351,
                ),
              ),
              child: const NftRankListView(items: StatsDummyData.stats),
            ),
          ),
        ],
      ),
    );
  }
}
