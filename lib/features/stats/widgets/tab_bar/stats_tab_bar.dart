import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/features/stats/widgets/tab_bar/custom_stats_tab.dart';

class StatsTabBar extends StatelessWidget implements PreferredSizeWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: AppColors.primaryText,
      unselectedLabelColor: AppColors.tabBarUnselectedLabel,
      indicatorColor: AppColors.tabBarIndicator,
      indicatorWeight: 3,
      dividerColor: AppColors.filterButtonBorder,
      dividerHeight: 0.7,

      tabs: const [
        CustomStatsTab(title: 'Ranking', icon: Icons.leaderboard_rounded),
        CustomStatsTab(title: 'Activity', icon: Icons.show_chart_rounded),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
