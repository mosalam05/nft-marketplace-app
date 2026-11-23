import 'package:material_ui/material_ui.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/core/widgets/custom_app_bar.dart';
import 'package:nft_marketplace/features/stats/widgets/tab_bar/stats_tab_bar.dart';

class StatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Stats',
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.ellipsis_circle),
        ),
      ],
      bottom: StatsTabBar(),
      iconTheme: const IconThemeData(color: AppColors.secondaryText, size: 24),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
