import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/features/stats/widgets/ranking_view.dart';
import 'package:nft_marketplace/features/stats/widgets/stats_app_bar.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';

class StatsView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: StatsAppBar(),
        body: TabBarView(
          children: [
            RankingView(),
            Center(
              child: Text('Activity', style: TextStyle(color: AppColors.green)),
            ),
          ],
        ),
      ),
    );
  }
}
